import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failuer {
  final String errMessage;

  Failuer(this.errMessage);
}

class ServerFaileur extends Failuer {
  ServerFaileur(super.errMessage);

  factory ServerFaileur.fromDioExption(DioException e) {
    return switch (e.type) {
      DioExceptionType.connectionTimeout =>
        ServerFaileur('time conneciont is out ,please try again'),
      DioExceptionType.sendTimeout =>
        ServerFaileur('send time out ,please try again'),
      DioExceptionType.receiveTimeout =>
        ServerFaileur('time conneciont is out ,please try again'),
      DioExceptionType.badCertificate =>
        ServerFaileur('bad certificat with api ,please try again'),
      DioExceptionType.badResponse =>
        ServerFaileur.fromRespons(e.response!.statusCode!, e.response!.data),
      DioExceptionType.cancel =>
        ServerFaileur('Request to api server was canceld ,please try again'),
      DioExceptionType.connectionError => throw UnimplementedError(),
      DioExceptionType.unknown =>
        ServerFaileur('opps there is an error ,please try again'),
    };
  }
  factory ServerFaileur.fromRespons(int statuscode, dynamic response) {
    if (statuscode == 404) {
      return ServerFaileur('Your Request was not found ,please try again');
    } else if (statuscode == 500) {
      return ServerFaileur('there is a problem with Server, please try again');
    } else if (statuscode == 400 || statuscode == 401 || statuscode == 405) {
      return ServerFaileur(response["error"]["message"]);
    } else {
      return ServerFaileur('there is an error, please try agian');
    }
  }
}
