import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      color: Colors.grey.shade50,
      child: Column(
        children: [
          const Text(
              'Contactez-nous',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)
          ),
          const SizedBox(height: 15),
          const Text(
            'Notre équipe support est à votre disposition pour répondre à vos questions.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 40),

          Wrap(
            spacing: 40,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildContactCard(
                icon: Icons.email,
                title: 'Email Support',
                value: 'support@caddiescan.fr',
              ),
              _buildContactCard(
                icon: Icons.phone,
                title: 'Téléphone',
                value: '+33 1 23 45 67 89',
              ),
              _buildContactCard(
                icon: Icons.access_time,
                title: 'Horaires',
                value: 'Lun - Ven : 10h - 18h',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard({required IconData icon, required String title, required String value}) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 36, color: Colors.blue),
          const SizedBox(height: 10),
          Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)
          ),
          const SizedBox(height: 8),
          Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87)
          ),
        ],
      ),
    );
  }
}