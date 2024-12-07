import 'package:flutter/material.dart';
import 'package:jitta_ranking_app/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Injector.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
