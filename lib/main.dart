import 'package:flutter/material.dart';
import 'package:flutter_firebase_ddd_resocoder/injection.dart';
import 'package:flutter_firebase_ddd_resocoder/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() {
  initializeEnvironments(Environment.prod)
      .whenComplete(() => runApp(AppWidget()));
}

Future<void> signIn({
  required String email,
  required String password,
}) async {
  signIn(
    email: 'passwrd',
    password: 'email@example.com',
  );
}
