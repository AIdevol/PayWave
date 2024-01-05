// lib/login_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  // ignore: avoid_types_as_parameter_names
  const LoginScreen({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 28, 66, 98), Colors.white],
            stops: [0.5, 0.5],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              _buildWelcomeContainer(),
              _buildSvgIconsContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeContainer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 28, 66, 98), Colors.white],
          stops: [0.5, 0.5],
        ),
      ),
      alignment: Alignment.topCenter,
      child: const Text(
        'WELCOME!',
        style: TextStyle(
          fontFamily: 'sans-serif',
          color: Colors.white,
          fontSize: 34.0,
        ),
      ),
    );
  }

  Widget _buildSvgIconsContainer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/dollor.svg',
            width: 200,
            color: const Color.fromARGB(255, 233, 136, 40),
            height: 120,
          ),
          // Add other SVG icons or widgets as needed
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LoginScreen(),
  ));
}
