import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart';
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/flow/state_flow.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'detail_view_model.freezed.dart';

class DetailViewModel extends ViewModelInterface {
  final LocalCacheStore _localCacheStore;
  final CurriculumRepository curriculumRepository;
  DetailViewModel(this._localCacheStore,this.curriculumRepository );

  // States
  final state = StateFlow<DetailState>(seed: DetailState());

  Future<void> fetchDetailData(int learningId, int curriculumId) async {
    state.val = state.val?.copyWith(isLoading: true);

    final userId = _localCacheStore.getString('access_token');

    final result = await curriculumRepository.fetchDetailLearning(
      learningId: learningId,
      curriculumId: curriculumId,
      userId: userId!,
    );

    result.fold(
      (exception) {
        print("fetchDetailData exception => ${exception.message}");
        state.val = state.val?.copyWith(isLoading: false);
      },
      (data) {
        state.val = state.val?.copyWith(
          isLoading: false,
          detail: data,
        );
      },
    );
  }

  @override
  void disposeAll() {
    state.close();
  }
}

@freezed
abstract class DetailState with _$DetailState {
  const factory DetailState({
    @Default(false) bool isLoading,
    LearningDetailModel? detail,
  }) = _DetailState;
}

