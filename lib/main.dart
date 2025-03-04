import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StackScreen(),
    );
  }
}

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Luis Molinar MAT:1081",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.tealAccent.shade100, // Color de fondo
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              _buildBox(140, Colors.purple, 20, 20), // Cuadro morado
              _buildBox(110, Colors.yellow, 60, 60), // Cuadro amarillo
              _buildBox(85, Colors.orange, 90, 90),  // Cuadro naranja
              _buildBox(60, Colors.red, 120, 120),   // Cuadro rojo
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBox(double size, Color color, double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(4, 4),
            ),
          ],
        ),
      ),
    );
  }
}