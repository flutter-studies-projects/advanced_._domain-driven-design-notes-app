import 'package:dartz/dartz.dart';
import 'package:flutter_firebase_ddd_resocoder/domain/auth/auth_failure.dart';
import 'package:flutter_firebase_ddd_resocoder/domain/auth/value_objects.dart';

abstract class InterfaceAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
