// ===== IMPORTS =====
import 'package:flutter/material.dart';
import 'package:tictic/screens/welcome/widgets/call_to_action.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/screens/welcome/widgets/text_slider_with_bullet.dart';
import 'package:tictic/widgets/scaffold_with_image.dart';

// ===== DÉCLARATION DU WIDGET =====

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      child: Column(
        children: [
          Spacer(),
          LogoWelcome(),
          Spacer(),
          TextSliderWithBullets(),
          Spacer(),
          CallToActions(),
        ],
      ),
    );
  }
}
