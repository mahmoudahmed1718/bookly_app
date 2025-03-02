import 'package:bookly_app/core/errors/faileur.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failuer, Type>> call([Param param]);
}

class NoParam {}
