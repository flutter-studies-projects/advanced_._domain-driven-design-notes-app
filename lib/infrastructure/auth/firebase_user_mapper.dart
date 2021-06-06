import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_firebase_ddd_resocoder/domain/auth/user.dart';
import 'package:flutter_firebase_ddd_resocoder/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
