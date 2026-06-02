import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: Colors.blue.shade900,
      child: const Center(
        child: Text(
          '© 2026 CaddieScan. Tous droits réservés.',
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}