import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_firebase_auth/logic/user_notifier.dart';
import 'package:riverpod_firebase_auth/screens/error/error_screen.dart';
import 'package:riverpod_firebase_auth/screens/home/home_screen.dart';
import 'package:riverpod_firebase_auth/screens/login/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

final firebaseInitialization =
    FutureProvider((ref) => Firebase.initializeApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Consumer(
        builder: (context, watch, _) {
          AsyncValue<FirebaseApp> initStatus = watch(firebaseInitialization);

          return initStatus.when<Widget>(
            data: (app) {
              final userState = watch<UserState>(userProvider);
              return userState.maybeWhen(
                connected: (user) => HomeScreen(),
                orElse: () => LoginScreen(),
              );
            },
            loading: () => _AppLoader(),
            error: (err, stackTrace) => ErrorScreen(),
          );
        },
      ),
    );
  }
}

class _AppLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loaderSize = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: loaderSize,
          width: loaderSize,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
