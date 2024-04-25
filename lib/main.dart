import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:linkyou/core/routing/router.dart';
import 'package:linkyou/firebase_options.dart';
import 'package:linkyou/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    initDependencies(),
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
