import 'package:flutter/material.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      color: Colors.white,
      child: Column(
        children: [
          const Text('Pourquoi choisir CaddieScan ?', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              _buildFeatureItem(Icons.qr_code_scanner, 'Scan Rapide', 'Scannez vos articles et vos cartes de fidélité en un clin d\'œil.'),
              _buildFeatureItem(Icons.map, 'Carte du magasin', 'Reperez vous dans n\'importe quel magasin en France.'),
              _buildFeatureItem(Icons.dashboard, 'Dashboard Web', 'Suivez vos ventes, stocks et clients depuis votre interface admin web.'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String description) {
    return Container(
      width: 250,
      child: Column(
        children: [
          CircleAvatar(radius: 30, backgroundColor: Colors.blue.shade100, child: Icon(icon, size: 30, color: Colors.blue)),
          const SizedBox(height: 15),
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(description, textAlign: TextAlign.center, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}