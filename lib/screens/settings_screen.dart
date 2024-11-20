import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Tentang Aplikasi'),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Pengingat Jadwal Kuliah',
                  applicationVersion: '1.0.0',
                  applicationLegalese: 'Dibuat oleh [Nama Anda].',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
