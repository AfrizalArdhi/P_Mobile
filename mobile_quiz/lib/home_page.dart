import 'package:flutter/material.dart';
import 'package:mobile_quiz/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage(
      {super.key,
      required this.username,
      required this.password,
      this.surname});
  final String username;
  final String password;
  final String? surname;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _nama = TextEditingController();
  final _nim = TextEditingController();
  final _kerja = TextEditingController();
  final _organisasi = TextEditingController();
  final _hardskill = TextEditingController();
  final _softskill = TextEditingController();
  final _penghargaan = TextEditingController();

  void lihatprofil() {
    String nama = _nama.text;
    String nim = _nim.text;
    String kerja = _kerja.text;
    String organisasi = _organisasi.text;
    String hardskill = _hardskill.text;
    String softskill = _softskill.text;
    String penghargaan = _penghargaan.text;

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProfilePage(
          nama: nama,
          nim: nim,
          kerja: kerja,
          organisasi: organisasi,
          hardskill: hardskill,
          softskill: softskill,
          penghargaan: penghargaan);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Selamat Datang, ${widget.surname!.isNotEmpty ? widget.surname : widget.username}",
        ),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white, // Warna teks
          fontSize: 20, // Ukuran font
        ),
      ),
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  //nama lengkap
                  controller: _nama,
                  decoration: InputDecoration(
                    label: Text("Nama Lengkap"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  //NIM
                  controller: _nim,
                  decoration: InputDecoration(
                    label: Text("NIM"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  //Pengalaman kerja
                  controller: _kerja,
                  decoration: InputDecoration(
                    label: Text("Pengalaman Kerja"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  //Pengalaman Organisasi
                  controller: _organisasi,
                  decoration: InputDecoration(
                    label: Text("Pengalaman Organisasi"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  //HardSkill
                  controller: _hardskill,
                  decoration: InputDecoration(
                    label: Text("Hard Skill"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  //Soft SKill
                  controller: _softskill,
                  decoration: InputDecoration(
                    label: Text("Soft SKill"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  //Pencapaian Penghargaan
                  controller: _penghargaan,
                  decoration: InputDecoration(
                    label: Text("Pencapaian / Penghargaan"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      lihatprofil();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      backgroundColor: Colors.blue, // Warna tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Lihat Profil",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
