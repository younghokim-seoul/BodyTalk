import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bodytalk/data/remote/exception/http_exception.dart';
import 'package:bodytalk/data/remote/network_service.dart';
import 'package:bodytalk/data/remote/response/either.dart';
import 'package:bodytalk/data/remote/response/response.dart' as response;
import 'package:dio/dio.dart';


mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<AppException, response.Response>>
  handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endpoint = ''}) async {
    try {
      final res = await handler();
      return Right(
        response.Response(
          statusCode: res.statusCode ?? 200,
          data: res.data,
          statusMessage: res.statusMessage,
        ),
      );
    } catch (e) {
      String message = '';
      String identifier = '';
      int statusCode = 0;
      log("handleException ${e.runtimeType}");
      switch (e.runtimeType) {
        case SocketException _:
          e as SocketException;
          message = 'Unable to connect to the server.';
          statusCode = 0;
          identifier = 'Socket Exception ${e.message}\n at  $endpoint';
          break;

        case DioException _:
          e as DioException;
          message = e.response?.data?['message'] ?? 'Internal Error occurred';
          statusCode = 1;
          identifier = 'DioException ${e.message} \nat  $endpoint';
          break;

        default:
          message = 'Unknown error occurred';
          statusCode = 2;
          identifier = 'Unknown error ${e.toString()}\n at $endpoint';
      }
      return Left(
        AppException(
          message: message,
          statusCode: statusCode,
          identifier: identifier,
        ),
      );
    }
  }
}