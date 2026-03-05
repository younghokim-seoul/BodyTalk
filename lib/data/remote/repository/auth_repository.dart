import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/exception/http_exception.dart';
import 'package:bodytalk/data/remote/model/user/user_model.dart';
import 'package:bodytalk/data/remote/network_service.dart';
import 'package:bodytalk/data/remote/response/either.dart';


abstract class AuthRepository {
  Future<Either<AppException, UserModel>> loginUser({
    required Map<String, dynamic> param,
  });
}

class AuthRepositoryImpl implements AuthRepository {
  final NetworkService networkService;
  final LocalCacheStore localCacheStore;

  AuthRepositoryImpl(this.networkService, this.localCacheStore);

  @override
  Future<Either<AppException, UserModel>> loginUser({
    required Map<String, dynamic> param,
  }) async {
    try {
      final eitherType = await networkService.post(
        '/v1/api/login',
        data: param,
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final user = UserModel.fromJson(response.data);
          localCacheStore.setString('access_token', user.userId);
          return Right(user);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: 'Unknown error occurred',
          statusCode: 1,
          identifier: '${e.toString()}\nLoginUserRemoteDataSource.loginUser',
        ),
      );
    }
  }
}
