
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 83, 120),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 38, 83, 120), Colors.white],
            stops: [0.5, 0.5],
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              _buildWelcomeContainer(),
              _buildSvgIconsContainer(),
              _buildLoginForm(context),
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
          colors: [Color.fromARGB(255, 38, 83, 120), Color.fromARGB(255, 38, 83, 120)],
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/dollar.svg', // Correct the SVG file name
            width: 280,
            height: 180,
          ),
          // Add other SVG icons or widgets as needed
        ],
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              hintText: 'Username or Email',
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              // textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              hintText: 'Password',
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              // textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 38, 66, 120),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text('LOG IN', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'New to Bank Apps? Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
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
