// ===== IMPORTS =====
import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';

// ===== DÉCLARATION DU WIDGET =====
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState(); // Crée l'état associé à ce widget
}

// ===== ÉTAT DU WIDGET =====
// C'est ici qu'on gère les données qui peuvent changer
class _WelcomeState extends State<Welcome> {
  // PageController = contrôle le carousel de pages
  // viewportFraction: 1 signifie que chaque page occupe 100% de la largeur
  final PageController _pageController = PageController(viewportFraction: 1);
  int _currentPage = 0;

  final _items = [
    'L’harmonie financière dans vos groupes, en toute simplicité !',
    'Calculs instantanés, équité garantie avec TicTic !',
    'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !',
    'TicTic : Vos dépenses partagées en toute simplicité !',
  ];

  // ===== CONSTRUCTION DE L'INTERFACE =====
  @override
  Widget build(BuildContext context) {
    return Scaffold(// Structure de base d'un écran Flutter
      body: Container(
        width: MediaQuery.of(
          context,
        ).size.width, // Prend toute la largeur de l'écran
        decoration: BoxDecoration(// Ajoute une image de fond
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(// SafeArea = évite les zones système (notch, barre de statut)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Répartit l'espace équitablement entre les widgets
            children: [
              LogoWelcome(),
              Column(// Regroupe le text avec les bullets
                children: [
                  SizedBox(
                    // TODO : fix
                    height: kTextSliderHeight,
                    child: PageView.builder(// PageView.builder = crée un carousel horizontal
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      itemCount: _items.length,
                      onPageChanged: (index) {// Callback appelé quand on change de page
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) {// Construit chaque page du carousel
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kHorizontalPadding,
                          ),
                          child: Text(_items[index]),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_items.length, (index) {// List.generate = crée automatiquement 4 indicateurs
                      return Container(
                        margin: const EdgeInsets.only(
                          left: 8,
                          right: 8,
                          top: 24,
                        ),
                        width: 50,
                        height: 3,
                        decoration: BoxDecoration(// Style de l'indicateur
                          color: _currentPage == index // Couleur verte si c'est la page actuelle, sinon blanc
                              ? Color(0xFF3D5A4F)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(1.5),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
