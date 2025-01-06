import 'package:flutter/material.dart';


class JadwalMember extends StatelessWidget {
  final List<String> days = ["SENON", "SELASA", "RABU", "KAMIS", "JUMAT"];

  JadwalMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.open_in_new, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.lightBlue,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20),
          itemCount: days.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Center(
                    child: Text(
                      days[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    // Aksi ketika item ditekan
                  },
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: IconButton(
          icon: const Icon(Icons.refresh, color: Colors.black),
          onPressed: () {
            // Aksi untuk tombol refresh
          },
        ),
      ),
    );
  }
}
