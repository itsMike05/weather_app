import 'package:flutter/material.dart';
import 'package:weather_app/pages/weather_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Main container color Color.fromARGB(109, 72, 47, 180)

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        centerTitle: true,
        title: const Text(
          "Weather",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w300,
              letterSpacing: 10,
              color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded),
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Primary weather information
          weatherPage(Icons.sunny, "27.6", "Bydgoszcz"),
          const SizedBox(height: 50.0),
          const Text(
            "Secondary statistics",
            style: TextStyle(
              color: Color.fromARGB(221, 33, 33, 33),
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(thickness: 2),
          const SizedBox(height: 50.0),
          // Additional weather information
        ],
      ),
    );
  }
}
