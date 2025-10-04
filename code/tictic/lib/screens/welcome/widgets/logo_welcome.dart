import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/sizes.dart';

// ===== WIDGET LOGO =====
class LogoWelcome extends StatelessWidget {
  const LogoWelcome({super.key});
  // ===== CONSTRUCTION DU WIDGET =====
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(// SvgPicture.asset = affiche une image SVG depuis les assets
      "assets/icons/logo.svg",
      // Hauteur du logo (calculée dynamiquement)
      // MediaQuery.of(context).size.height = hauteur totale de l'écran
      // Multiplié par kLogoSizeRatioWelcome (ex: 0.2 = 20% de la hauteur d'écran)
      height: MediaQuery.of(context).size.height * kLogoSizeRatioWelcome,
      width: MediaQuery.of(context).size.height * kLogoSizeRatioWelcome,
      // Accessibilité : description pour les lecteurs d'écran
      // Important pour les personnes malvoyantes
      semanticsLabel: 'Le logo TicTic',
    );
  }
}
