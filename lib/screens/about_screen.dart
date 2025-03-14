import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Me")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            SizedBox(height: 10),

            // Nama
            Text(
              "Jainal Widianto",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Deskripsi Singkat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Saya adalah mahasiswa Program Studi Informatika di Universitas Ciputra Surabaya. "
                "Saat ini, saya sedang mendalami pengembangan aplikasi menggunakan Flutter.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            SizedBox(height: 20),

            // Sosial Media
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.email, color: Colors.redAccent),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.linked_camera, color: Colors.blueAccent),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.web, color: Colors.green),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
