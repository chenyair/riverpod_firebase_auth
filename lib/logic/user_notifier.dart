import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'user_notifier.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  factory UserState.connected(User user) = ConnectedUser;
  factory UserState.disconnected() = _NoUser;
  factory UserState.error(String message) = _ErrorUser;
}

class UserNotifier extends StateNotifier<UserState> {
  late StreamSubscription _userStateSubscription;

  UserNotifier() : super(UserState.disconnected()) {
    _listenToUserState();
  }

  void _listenToUserState() {
    _userStateSubscription =
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        state = UserState.disconnected();
      } else {
        state = UserState.connected(user);
      }
    });
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        state = UserState.error('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        state = UserState.error('Wrong password provided for that user.');
      }
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        await FirebaseAuth.instance.signInWithCredential(credential);
      }
    } on PlatformException catch (e) {
      state = UserState.error('Could not sign in with google');
    }
  }

  @override
  void dispose() {
    _userStateSubscription.cancel();
    super.dispose();
  }
}

final userProvider = StateNotifierProvider.autoDispose<UserNotifier, UserState>(
  (ref) => UserNotifier(),
);
