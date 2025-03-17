import 'package:flutter/material.dart';
import 'second_page.dart.dart'; // Import halaman kedua

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Utama')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman kedua
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text('Ke Halaman Kedua'),
        ),
      ),
    );
  }
}
