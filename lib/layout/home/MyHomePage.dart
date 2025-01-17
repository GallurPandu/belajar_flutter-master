import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat datang di aplikasi Flutter!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tombol ditekan!')),
                );
              },
              child: Text('Tekan Saya'),
            ),
          ],
        ),
      ),
    );
  }
}