import 'package:bodytalk/data/remote/exception/http_exception.dart';
import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart'
    show LearningDetailModel;
import 'package:bodytalk/data/remote/model/learning/learning_model.dart';
import 'package:bodytalk/data/remote/model/plan/create_plan_model.dart';
import 'package:bodytalk/data/remote/model/plan/create_plan_response_model.dart';
import 'package:bodytalk/data/remote/model/practice/practice_model.dart';
import 'package:bodytalk/data/remote/model/practice/practice_response_model.dart';
import 'package:bodytalk/data/remote/model/submit/submit_model.dart';
import 'package:bodytalk/data/remote/model/submit/submit_response_model.dart';
import 'package:bodytalk/data/remote/network_service.dart';
import 'package:bodytalk/data/remote/response/either.dart';

abstract class CurriculumRepository {
  Future<Either<AppException, LearningModel>> fetchLearnings();

  Future<Either<AppException, LearningDetailModel>> fetchDetailLearning({
    required int learningId,
    required int curriculumId,
    required String userId,
  });

  Future<Either<AppException, CreatePlanResponseModel>> createPlan({
    required CreatePlanModel param,
  });

  Future<Either<AppException, PracticeResponseModel>> createPractice({
    required PracticeModel param,
  });

  Future<Either<AppException, SubmitResponseModel>> createSubmit({
    required SubmitModel param,
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

  @override
  Future<Either<AppException, CreatePlanResponseModel>> createPlan({
    required CreatePlanModel param,
  }) async {
    try {
      final eitherType = await networkService.post(
        '/v1/api/plan',
        data: param.toJson(),
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final model = CreatePlanResponseModel.fromJson(response.data);
          return Right(model);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: e.toString(),
          statusCode: 1,
          identifier: '${e.toString()}\nCurriculumRepositoryImpl.createPlan',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, PracticeResponseModel>> createPractice({
    required PracticeModel param,
  }) async {
    try {
      final eitherType = await networkService.post(
        '/v1/api/practice',
        data: param.toJson(),
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final model = PracticeResponseModel.fromJson(response.data);
          return Right(model);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: e.toString(),
          statusCode: 1,
          identifier:
              '${e.toString()}\nCurriculumRepositoryImpl.createPractice',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, SubmitResponseModel>> createSubmit({
    required SubmitModel param,
  }) async {
    try {
      final eitherType = await networkService.post(
        '/v1/api/submit',
        data: await param.toFormData(),
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final model = SubmitResponseModel.fromJson(response.data);
          return Right(model);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: e.toString(),
          statusCode: 1,
          identifier: '${e.toString()}\nCurriculumRepositoryImpl.createSubmit',
        ),
      );
    }
  }
}
