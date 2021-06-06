import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_ddd_resocoder/application/auth/bloc/auth_bloc.dart';
import 'package:flutter_firebase_ddd_resocoder/injection.dart';
import 'package:flutter_firebase_ddd_resocoder/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        )
      ],
      child: MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        home: MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
        theme: ThemeData.light().copyWith(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.green[800],
            ),
            primaryColorLight: Colors.green[800],
            backgroundColor: Colors.green[800],
            primaryColor: Colors.green[800],
            accentColor: Colors.green[800],
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            )),
      ),
    );
  }
}
