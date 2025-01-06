import 'package:flutter/material.dart';
import 'package:untitled22/screens/login_screen.dart';
import 'screens/register_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Kotak miring tanpa background biru
            Transform.rotate(
              angle: -0.3, // Rotasi miring
              child: Container(
                width: 100,
                height: 60,
                color: Colors.lightBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      height: 2,
                      width: 60,
                      color: Colors.white,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      height: 2,
                      width: 50,
                      color: Colors.white,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      height: 2,
                      width: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            // Tombol Register
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterScreen()), // Panggil halaman register
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Warna latar tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Sudut melingkar
                ),
                minimumSize: const Size(250, 50), // Ukuran tombol
              ),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white, fontSize: 16), // Gaya teks
              ),
            ),

            const SizedBox(height: 10),
            // Tombol Login
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()), // Panggil halaman register
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Warna latar tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Sudut melingkar
                ),
                minimumSize: const Size(250, 50), // Ukuran tombol
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 16), // Gaya teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}
