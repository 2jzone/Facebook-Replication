import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  final String workEducation;
  final String placeFrom;
  final String birthday;
  final String status;
  final String contact;

  const AboutTab({
    super.key,
    required this.workEducation,
    required this.placeFrom,
    required this.birthday,
    required this.status,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Ensure the height is only as tall as needed
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // Fit content height
                children: [
                  _buildInfoRow('Work/Education:', workEducation),
                  const Divider(),
                  _buildInfoRow('From:', placeFrom),
                  const Divider(),
                  _buildInfoRow('Birthday:', birthday),
                  const Divider(),
                  _buildInfoRow('Status:', status),
                  const Divider(),
                  _buildInfoRow('Contact:', contact),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
