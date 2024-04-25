import 'dart:developer';

import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:linkyou/core/routing/routes.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInScreen(
        providers: [
          GoogleProvider(clientId: '217319093359-tufa55p68ikuvvcjklo9ph7bah68llhr.apps.googleusercontent.com'),
        ],
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) {
            context.go(GALLERY_ROUTE);
          }),
          AuthStateChangeAction<UserCreated>((context, state) {
            context.go(GALLERY_ROUTE);
          }),
          AuthStateChangeAction<AuthFailed>((context, state) {
            log(state.exception.toString());
          }),
        ],
      ),
    );
  }
}
