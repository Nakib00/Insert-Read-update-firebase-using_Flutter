import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fetch_data.dart';
import 'insert_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Database Controle App",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InsertData()),
                );
              },
              child: const Text("Insert Data"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShowData()),
                );
              },
              child: const Text("Show Data"),
            ),
          ],
        ),
      ),
    );
  }
}
