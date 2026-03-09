import 'package:bodytalk/data/remote/exception/http_exception.dart';
import 'package:bodytalk/data/remote/response/either.dart';
import 'package:bodytalk/data/remote/response/response.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

  Future<Either<AppException, Response>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<AppException, Response>> post(
    String endpoint, {
    Object? data,
  });
}
