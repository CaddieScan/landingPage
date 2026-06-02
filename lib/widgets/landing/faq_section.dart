import 'package:flutter/material.dart';

class FaqSection extends StatelessWidget {
  const FaqSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      width: 800,
      child: const Column(
        children: [
          Text('Questions Fréquentes', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          ExpansionTile(
            title: Text('Comment fonctionne le scan de caddie ?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Ouvrez l\'application mobile, scannez le code-barres de vos articles et ils s\'ajouteront automatiquement à votre panier.'),
              )
            ],
          ),
          ExpansionTile(
            title: Text('Comment puis-je me repérer dans un nouveau magasin ?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Découvrez nos cartes de magasin intéractive disponible sur la partie scan de l\'application.'),
              )
            ],
          ),
          ExpansionTile(
            title: Text('Où puis-je accéder à la partie Admin ?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('La partie administration est accessible directement via notre plateforme web pour les magasins partenaires.'),
              )
            ],
          ),
        ],
      ),
    );
  }
}