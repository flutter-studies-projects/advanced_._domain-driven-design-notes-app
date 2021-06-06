import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_firebase_ddd_resocoder/injection.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}

Future<void> initializeEnvironments(String env) async {
  if (env == 'prod') {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
  configureInjection(env);
}
