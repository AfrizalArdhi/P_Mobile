import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("Monkey Dashboard"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(168, 158, 0, 0),
        ),
        body: SingleChildScrollView( // Tambahkan ini
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 15),
                CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/image/Monyet.jpeg'),
                ),
                SizedBox(height: 15),
                Text(
                  'Afrizal Ardhi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('123220128'),
                SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Button 1"),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Button 2"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Button 3"),
                    ),
                  ],
                ),
                GridView.builder(
                  padding: EdgeInsets.all(15),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (_, index) {
                    final colors = [Colors.red, Colors.green, Colors.blue, Colors.amber];
                    return Card(
                      color: colors[index % colors.length],
                      child: Center( // Pastikan logo berada di tengah
                        child: FlutterLogo(size: 80), // Perbesar ukuran logo
                      ),
                    );
                  },
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
