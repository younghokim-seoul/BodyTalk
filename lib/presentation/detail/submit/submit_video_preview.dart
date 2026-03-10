import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SubmitVideoPreview extends StatefulWidget {
  final String videoUrl;

  const SubmitVideoPreview({super.key, required this.videoUrl});

  @override
  State<SubmitVideoPreview> createState() => _SubmitVideoPreviewState();
}

class _SubmitVideoPreviewState extends State<SubmitVideoPreview> {
  static const _previewAspectRatio = 16 / 9;
  static const _fallbackVideoWidth = 16.0;
  static const _fallbackVideoHeight = 9.0;

  VideoPlayerController? _controller;
  Future<void>? _initializeFuture;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  @override
  void didUpdateWidget(covariant SubmitVideoPreview oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoUrl != widget.videoUrl) {
      _disposePlayer();
      _initializePlayer();
    }
  }

  void _initializePlayer() {
    final controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );

    controller.setLooping(true);

    _controller = controller;
    _initializeFuture = controller.initialize();
  }

  Future<void> _togglePlayback() async {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) return;

    await (controller.value.isPlaying ? controller.pause() : controller.play());

    if (mounted) {
      setState(() {});
    }
  }

  void _disposePlayer() {
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
          const Text(
            'Submitted Video',
            style: TextStyle(
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
                          'Unable to load video.',
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
    final videoWidth = videoSize.width == 0 ? _fallbackVideoWidth : videoSize.width;
    final videoHeight = videoSize.height == 0 ? _fallbackVideoHeight : videoSize.height;
    final isPlaying = controller.value.isPlaying;

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
              onTap: _togglePlayback,
              child: ColoredBox(
                color: Colors.black.withValues(alpha: isPlaying ? 0.08 : 0.24),
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
