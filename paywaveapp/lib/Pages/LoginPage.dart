// // // lib/login_screen.dart

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
            colors: [Color.fromARGB(255, 38, 83, 120), Colors.white],
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
          colors: [Color.fromARGB(255, 38, 83, 120),Color.fromARGB(255, 38, 83, 120)],
          stops: [0.5, 0.5],
        ),
      ),
      alignment: Alignment.topCenter,
      child: const Text(
        '\nWELCOME!',
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
      
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/dollor.svg',
            width: 280,
            // color: const Color.fromARGB(255, 233, 136, 40),
            height: 180,
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


// // lib/login_screen.dart

// // lib/login_screen.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color.fromARGB(255, 28, 66, 98), Colors.white],
//             stops: [0.5, 0.5],
//           ),
//         ),
//         child: Center(
//           child: Column(
//             children: [
//               _buildWelcomeAndSvgContainer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildWelcomeAndSvgContainer() {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Color.fromARGB(255, 28, 66, 120)],
//           stops: [0.5, 0.5],
//         ),
//       ),
//       alignment: Alignment.topCenter,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text(
//             'WELCOME!',
//             style: TextStyle(
//               fontFamily: 'sans-serif',
//               color: Colors.white,
//               fontSize: 34.0,
//             ),
//           ),
//           const SizedBox(height: 16.0), // Adjust the spacing between text and SVG icon
//           SvgPicture.asset(
//             'assets/dollar.svg',
//             width: 50,
//             height: 70,
//           ),
//           // Add other SVG icons or widgets as needed
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MaterialApp(
//     home: LoginScreen(),
//   ));
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Banking App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Banking App'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Container(
//               color: Colors.blue,
//               child: const Column(
//                 children: <Widget>[
//                   Icon(Icons.account_balance, size: 100),
//                   Text(
//                     'WELCOME!',
//                     style: TextStyle(fontSize: 30, color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//             const TextField(
//               decoration: InputDecoration(
//                 hintText: 'Username or Email',
//               ),
//             ),
//             const TextField(
//               decoration: InputDecoration(
//                 hintText: 'Password',
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text('LOG IN'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: () {},
//                   child: const Text(
//                     'Forgot Password?',
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 GestureDetector(
//                   onTap: () {},
//                   child: const Text(
//                     'New to Bank Apps? Sign Up',
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
