import 'package:flutter/material.dart';

// Top-level function
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  AppBar _buildAppBar() {
    var firstName = 'Promlert';
    var lastName = 'Lovichit';
    var age = 49;

    // String interpolation
    return AppBar(
      title: Text('$firstName $lastName, age: $age'),
    );
  }

  Widget _buildPageBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/flutter-logo.png',
            width: 200.0,
            fit: BoxFit.contain,
          ),
          Text(
            // Positional paremeter
            'Flutter',
            // Named parameter
            style: TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            // Named parameter
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // Method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildPageBody(),
      ),
    );
  }
}
