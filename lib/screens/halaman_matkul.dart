import 'package:flutter/material.dart';

class HalamanMataKuliah extends StatefulWidget {
  const HalamanMataKuliah({super.key});

  @override
  HalamanMataKuliahState createState() => HalamanMataKuliahState();
}

class HalamanMataKuliahState extends State<HalamanMataKuliah> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    ('Halaman Mata Kuliah dibuka'); // Debugging

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF87CEEB),
        leading: const BackButton(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mata Kuliah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  setState(() {
                    isChecked = !isChecked;
                    // Debugging
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value ?? false;
                                // Debugging
                              });
                            },
                          ),
                          const Text(
                            'Pemrograman Perangkat Bergerak',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 32),
                        child: Text(
                          '(07.00 - 09.00)',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Icon(
                Icons.book_outlined,
                size: 100,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }


}