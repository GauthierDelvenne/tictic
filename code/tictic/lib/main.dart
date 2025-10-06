import 'package:flutter/material.dart';
import 'package:tictic/routes.dart';
import 'package:tictic/screens/welcome/welcome.dart';
import 'constants/colors.dart';
// ===== POINT D'ENTRÉE DE L'APPLICATION =====
// Cette fonction est la PREMIÈRE chose qui s'exécute quand l'app démarre
void main() {
  runApp(const MyApp());
}
// ===== WIDGET PRINCIPAL DE L'APPLICATION =====
// StatelessWidget = widget qui ne change jamais
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // ===== CONSTRUCTION DE L'APPLICATION =====
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTic',
      routes: routes,
      theme: kAppTheme,
    );
  }
}

