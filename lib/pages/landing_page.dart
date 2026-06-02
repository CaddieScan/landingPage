import 'package:flutter/material.dart';

// 1. IMPORTATION DE TES WIDGETS
// (Vérifie bien que le chemin correspond à ton projet, ex: 'package:ton_projet/widgets/...')
import '../widgets/landing/hero_section.dart';
import '../widgets/landing/features_section.dart';
import '../widgets/landing/screenshots_section.dart';
import '../widgets/landing/pricing_section.dart';
import '../widgets/landing/faq_section.dart';
import '../widgets/landing/contact_section.dart';
import '../widgets/landing/footer_section.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 2. REMPLACEMENT DES CONTAINERS PAR TES SECTIONS CLEAN
            HeroSection(),         // Contient ton titre CaddieScan et le bouton Admin
            FeaturesSection(),     // Vos fonctionnalités
            ScreenshotsSection(),  // Vos captures d'écran mobiles
            PricingSection(),      // Vos tarifs / formules
            FaqSection(),          // Vos questions fréquentes
            ContactSection(),      // Votre formulaire de contact
            FooterSection(),       // Votre bas de page avec le copyright
          ],
        ),
      ),
    );
  }
}