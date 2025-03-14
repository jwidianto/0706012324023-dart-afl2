import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            // Card untuk Informasi Kontak
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  ContactInfo(icon: Icons.person, label: "Name", value: "Jainal Widianto"),
                  ContactInfo(icon: Icons.person_outline, label: "Nickname", value: "Jainal"),
                  ContactInfo(icon: Icons.email, label: "Personal Email", value: "jainal.lovenda@gmail.com"),
                  ContactInfo(icon: Icons.verified_user, label: "Religion", value: "Moslem (Islam)"),
                  ContactInfo(icon: Icons.cake, label: "Birthday", value: "1994-04-29"),
                  ContactInfo(icon: Icons.location_city, label: "Birth City", value: "Magetan, Jawa Timur, Indonesia"),
                  ContactInfo(icon: Icons.home, label: "Citizenship Address", value: 
                    "Jalan Lebak Permai Utara 3 no 33-35,\nGading, Tambaksari"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget Reusable untuk Informasi Kontak
class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  ContactInfo({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blueAccent),
          SizedBox(width: 10),
          SizedBox(
            width: 140,
            child: Text(
              "$label:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
