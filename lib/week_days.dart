import 'package:flutter/material.dart';


class WeekDaysPage extends StatelessWidget {
  final List<String> days = ["SENON", "SELASA", "RABU", "KAMIS", "JUMAT"];

  WeekDaysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.copy_outlined, color: Colors.black),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Container(
        color: Colors.lightBlue,
        child: ListView.builder(
          itemCount: days.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  title: Center(
                    child: Text(
                      days[index],
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward, color: Colors.black),
                  onTap: () {
                    // Tambahkan aksi di sini jika diperlukan
                  },
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {},
        child: const Icon(Icons.refresh, color: Colors.black),
      ),
    );
  }
}
