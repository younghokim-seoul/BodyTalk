import 'package:bodytalk/data/remote/exception/http_exception.dart';
import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart';
import 'package:bodytalk/data/remote/model/learning/learning_model.dart';
import 'package:bodytalk/data/remote/network_service.dart';
import 'package:bodytalk/data/remote/response/either.dart';

abstract class CurriculumRepository {
  Future<Either<AppException, LearningModel>> fetchLearnings();

  Future<Either<AppException, LearningDetailModel>> fetchDetailLearning({
    required int learningId,
    required int curriculumId,
    required String userId,
  });
}

class CurriculumRepositoryImpl implements CurriculumRepository {
  final NetworkService networkService;

  CurriculumRepositoryImpl(this.networkService);

  @override
  Future<Either<AppException, LearningModel>> fetchLearnings() async {
    try {
      final eitherType = await networkService.get('/v1/api/curriculums');
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final model = LearningModel.fromJson(response.data);
          return Right(model);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: e.toString(),
          statusCode: 1,
          identifier:
              '${e.toString()}\nCurriculumRepositoryImpl.fetchLearnings',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, LearningDetailModel>> fetchDetailLearning({
    required int learningId,
    required int curriculumId,
    required String userId,
  }) async {
    try {
      final eitherType = await networkService.get(
        '/v1/api/curriculums/$learningId/$curriculumId/$userId',
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final model = LearningDetailModel.fromJson(response.data);
          return Right(model);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: e.toString(),
          statusCode: 1,
          identifier:
              '${e.toString()}\nCurriculumRepositoryImpl.fetchDetailLearning',
        ),
      );
    }
  }
}
