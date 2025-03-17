import 'package:flutter/material.dart';
import 'second_page_tulisan.dart'; // Import halaman kedua

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Utama')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Masukkan Nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = _controller.text;
                if (name.isNotEmpty) {
                  // Navigasi ke halaman kedua dengan mengirim data
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(name: name),
                    ),
                  );
                }
              },
              child: Text('Ke Halaman Kedua'),
            ),
          ],
        ),
      ),
    );
  }
}
