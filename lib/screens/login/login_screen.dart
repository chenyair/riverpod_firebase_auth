import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_firebase_auth/logic/user_notifier.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _LoginForm(),
      ),
    );
  }
}

final _emailProvider = Provider.autoDispose((ref) => TextEditingController());

final _passwordProvider =
    Provider.autoDispose((ref) => TextEditingController());

class _LoginForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final size = MediaQuery.of(context).size;
    final emailTextController = watch(_emailProvider);
    final passwordTextController = watch(_passwordProvider);
    final userState = watch(userProvider);

    return Form(
      key: _formKey,
      child: Center(
        child: Container(
          width: size.width * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailTextController,
                decoration: InputDecoration(hintText: 'Username'),
                validator: _validator,
              ),
              TextFormField(
                controller: passwordTextController,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
                validator: _validator,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context
                        .read(userProvider.notifier)
                        .signInWithEmailAndPassword(
                          emailTextController.text,
                          passwordTextController.text,
                        );
                  }
                },
                child: Text('Sign In'),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {
                    context.read(userProvider.notifier).signInWithGoogle();
                  },
                  child: Text(
                    'Sign In With Google',
                  )),
              userState.maybeWhen(
                error: (message) => Text(message),
                orElse: () => SizedBox.shrink(),
              )
            ],
          ),
        ),
      ),
    );
  }

  String? _validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field must not be empty';
    }

    return null;
  }
}
