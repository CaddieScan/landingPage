import 'package:flutter/material.dart';

class ScreenshotsSection extends StatelessWidget {
  const ScreenshotsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        children: [
          const Text('Aperçu de l\'application', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildScreenshot('ecran_scan.png'),
                const SizedBox(width: 20),
                _buildScreenshot('ecran_accueil.png'), // Corrigé !
                const SizedBox(width: 19),
                _buildScreenshot('ecran_carte_magasin.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenshot(String imageName) {
    return Container(
      width: 220,
      height: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(
          'screenshots/$imageName',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey.shade300,
              child: Center(
                child: Text(
                  'Image manquante :\n$imageName',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}