import 'package:flutter/material.dart';
import 'package:mobile_quiz/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.nama,
    required this.nim,
    required this.kerja,
    required this.organisasi,
    required this.hardskill,
    required this.softskill,
    required this.penghargaan,
  });

  final String nama;
  final String nim;
  final String kerja;
  final String organisasi;
  final String hardskill;
  final String softskill;
  final String penghargaan;

  Widget _buildProfileCard(String title, String value) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4, // Efek bayangan
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 4), // Jarak antara title dan value
            Text(
              value,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white, // Warna teks
          fontSize: 20, // Ukuran font
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/ijalgoblok.jpeg'),
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          _buildProfileCard("Nama", nama),
          _buildProfileCard("NIM", nim),
          _buildProfileCard("Pengalaman Kerja", kerja),
          _buildProfileCard("Pengalaman Organisasi", organisasi),
          _buildProfileCard("Hard Skill", hardskill),
          _buildProfileCard("Soft Skill", softskill),
          _buildProfileCard("Pencapaian / Penghargaan", penghargaan),

          const SizedBox(height: 20), // Jarak antar elemen

          ElevatedButton(
            onPressed: () {
              // Menghapus semua halaman sebelumnya dan kembali ke LoginPage
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      LoginPage(), // Sesuaikan dengan parameter LoginPage-mu
                ),
                (Route<dynamic> route) =>
                    false, // Hapus semua halaman sebelumnya
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              backgroundColor: Colors.red, // Warna tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "Kembali ke Login",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
