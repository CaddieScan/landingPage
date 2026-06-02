import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.blue.shade50,
      child: Column(
        children: [
          const Text(
            'CaddieScan',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 20),
          const Text(
            'ça vous gagne !',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.black54),
          ),
          const SizedBox(height: 40),
//          ElevatedButton(
//            onPressed: () {
//              context.go('/login');
//            },
//            child: const Text('Accéder à l\'Espace Admin'),
//          ),
//          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              final Uri url = Uri.parse('https://play.google.com/apps/internaltest/4699728455868082043');

              if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                throw Exception('Impossible d\'ouvrir le lien $url');
              }
            },
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
            child: const Text('Télécharger l\'application', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}