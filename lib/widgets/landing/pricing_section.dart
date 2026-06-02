import 'package:flutter/material.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text('Nos Formules', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildPricingCard('Licence utilisateur', '0€', ['Pour la partie mobile', 'Historique de vos achats', 'Support standard']),
              _buildPricingCard('Licence Magasin', '3500€/an', ['Pour la partie web et mobile', 'Dashboard Admin complet', 'Entretien de l\'application inclus']),
              _buildPricingCard('Achat de l\'application', '80000€', ['Achats de l\'application déployé', 'Partie web et mobile', 'Aucune maintencance inclus']),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPricingCard(String title, String price, List<String> features) {
    return Card(
      elevation: 4,
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(price, style: const TextStyle(fontSize: 28, color: Colors.blue, fontWeight: FontWeight.bold)),
            const Divider(height: 30),
            ...features.map((f) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(f),
            )),
          ],
        ),
      ),
    );
  }
}