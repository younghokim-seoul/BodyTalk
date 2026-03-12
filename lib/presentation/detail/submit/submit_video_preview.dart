import 'dart:async';
import 'dart:io';

import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SubmitVideoPreview extends StatelessWidget {
  final String videoUrl;

  const SubmitVideoPreview({super.key, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return _VideoPreviewCard(
      title: '제출한 영상',
      sourceKey: videoUrl,
      controllerBuilder: () =>
          VideoPlayerController.networkUrl(Uri.parse(videoUrl)),
    );
  }
}

class SubmitSelectedVideoPreview extends StatelessWidget {
  final File videoFile;

  const SubmitSelectedVideoPreview({super.key, required this.videoFile});

  @override
  Widget build(BuildContext context) {
    return _VideoPreviewCard(
      title: '선택한 영상',
      sourceKey: videoFile.path,
      controllerBuilder: () => VideoPlayerController.file(videoFile),
    );
  }
}

typedef _VideoPlayerControllerBuilder = VideoPlayerController Function();

class _VideoPreviewCard extends StatefulWidget {
  final String title;
  final String sourceKey;
  final _VideoPlayerControllerBuilder controllerBuilder;

  const _VideoPreviewCard({
    required this.title,
    required this.sourceKey,
    required this.controllerBuilder,
  });

  @override
  State<_VideoPreviewCard> createState() => _VideoPreviewCardState();
}

class _VideoPreviewCardState extends State<_VideoPreviewCard> {
  static const _previewAspectRatio = 16 / 9;
  static const _fallbackVideoWidth = 16.0;
  static const _fallbackVideoHeight = 9.0;
  static const _overlayHideDelay = Duration(seconds: 2);

  VideoPlayerController? _controller;
  Future<void>? _initializeFuture;
  Timer? _overlayHideTimer;
  bool _isPlaybackOverlayVisible = true;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  @override
  void didUpdateWidget(covariant _VideoPreviewCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.sourceKey != widget.sourceKey) {
      _disposePlayer();
      _initializePlayer();
    }
  }

  void _initializePlayer() {
    final controller = widget.controllerBuilder();

    controller.setLooping(true);

    _controller = controller;
    _initializeFuture = controller.initialize();
    _isPlaybackOverlayVisible = true;
  }

  Future<void> _togglePlayback() async {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) return;

    await (controller.value.isPlaying ? controller.pause() : controller.play());

    if (mounted) {
      if (controller.value.isPlaying) {
        _showPlaybackOverlay();
        _scheduleOverlayHide();
      } else {
        _cancelOverlayHideTimer();
        _showPlaybackOverlay();
      }
      setState(() {});
    }
  }

  void _handleVideoTap() {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) return;

    if (controller.value.isPlaying && !_isPlaybackOverlayVisible) {
      _showPlaybackOverlay();
      _scheduleOverlayHide();
      return;
    }

    _togglePlayback();
  }

  void _showPlaybackOverlay() {
    if (_isPlaybackOverlayVisible) return;

    setState(() {
      _isPlaybackOverlayVisible = true;
    });
  }

  void _scheduleOverlayHide() {
    _cancelOverlayHideTimer();
    _overlayHideTimer = Timer(_overlayHideDelay, () {
      final controller = _controller;
      if (!mounted || controller == null || !controller.value.isPlaying) return;

      setState(() {
        _isPlaybackOverlayVisible = false;
      });
    });
  }

  void _cancelOverlayHideTimer() {
    _overlayHideTimer?.cancel();
    _overlayHideTimer = null;
  }

  void _disposePlayer() {
    _cancelOverlayHideTimer();
    final controller = _controller;
    _controller = null;
    _initializeFuture = null;
    controller?.dispose();
  }

  @override
  void dispose() {
    _disposePlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    final initializeFuture = _initializeFuture;

    if (controller == null || initializeFuture == null) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.slate200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.slate900,
            ),
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: ColoredBox(
              color: Colors.black,
              child: AspectRatio(
                aspectRatio: _previewAspectRatio,
                child: FutureBuilder<void>(
                  future: initializeFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState != ConnectionState.done) {
                      return _buildCenteredState(
                        const CircularProgressIndicator(
                          color: AppColors.primaryAccent,
                        ),
                      );
                    }

                    if (snapshot.hasError) {
                      return _buildCenteredState(
                        const Text(
                          '영상을 불러오지 못했습니다.',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    }

                    return _buildVideoStack(controller);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCenteredState(Widget child) {
    return Center(child: child);
  }

  Widget _buildVideoStack(VideoPlayerController controller) {
    final videoSize = controller.value.size;
    final videoWidth = videoSize.width == 0
        ? _fallbackVideoWidth
        : videoSize.width;
    final videoHeight = videoSize.height == 0
        ? _fallbackVideoHeight
        : videoSize.height;
    final isPlaying = controller.value.isPlaying;
    final showPlaybackOverlay = !isPlaying || _isPlaybackOverlayVisible;

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: Center(
            child: FittedBox(
              fit: BoxFit.contain,
              child: SizedBox(
                width: videoWidth,
                height: videoHeight,
                child: VideoPlayer(controller),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: _handleVideoTap,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 180),
                opacity: showPlaybackOverlay ? 1 : 0,
                child: ColoredBox(
                  color: Colors.black.withValues(
                    alpha: isPlaying ? 0.08 : 0.24,
                  ),
                  child: Center(
                    child: Icon(
                      isPlaying
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_fill,
                      size: 64,
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 12,
          right: 12,
          bottom: 12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: VideoProgressIndicator(
              controller,
              allowScrubbing: true,
              padding: EdgeInsets.zero,
              colors: const VideoProgressColors(
                playedColor: AppColors.primaryAccent,
                bufferedColor: AppColors.slate300,
                backgroundColor: AppColors.slate500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
