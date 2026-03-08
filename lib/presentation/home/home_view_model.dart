import 'package:bodytalk/data/remote/model/learning/learning_model.dart';
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/flow/state_flow.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'home_view_model.freezed.dart';

class HomeViewModel extends ViewModelInterface {
  final CurriculumRepository curriculumRepository;

  HomeViewModel(this.curriculumRepository) {
    fetchHomeData();
  }

  // Events
  final _event = PublishSubject<HomeEvent>();

  Stream<HomeEvent> get event => _event.stream;

  // States
  final state = const HomeState().sbj;

  Future<void> fetchHomeData() async {
    state.val = state.val.copyWith(isLoading: true);
    
    final result = await curriculumRepository.fetchLearnings();
    
    result.fold(
      (exception) {
        print("fetchHomeData exception => " + exception.message);
        state.val = state.val.copyWith(isLoading: false);
      },
      (data) {
        state.val = state.val.copyWith(
          isLoading: false,
          learningId: data.learningId,
          learningNm: data.learningNm,
          curriculums: data.curriculums,
        );
      },
    );
  }

  void onTapCurriculum(int curriculumId) {
    sendEvent(HomeEvent.navToDetail(state.val.learningId, curriculumId));
  }

  void sendEvent(HomeEvent event) {
    _event.add(event);
  }

  @override
  void disposeAll() {
    _event.close();
    state.close();
  }
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(0) int learningId,
    @Default('') String learningNm,
    @Default([]) List<CurriculumModel> curriculums,
  }) = _HomeState;
}

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.navToDetail(int learningId ,int curriculumId ) = _HomeNavToDetail;
}
