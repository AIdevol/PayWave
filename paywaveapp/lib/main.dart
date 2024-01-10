import 'package:flutter/material.dart';
import 'Pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(), // Set the initial route
      // routes: {
      //   '/login': (context) => const LoginPage(),
      //   '/signup': (context) => const SignUpPage(),
      //   '/home': (context) => const HomePage(),
      // },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // drawer: HomePage(), // Note: Changed 'Homepage()' to 'HomePage()'
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: const Center(
//         //child: Text('Welcome to the Home Page!'),
//       ),
//     );
//   }
// }
