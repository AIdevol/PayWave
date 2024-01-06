import 'package:flutter/material.dart';
// import 'Pages/LoginPage.dart';
// import 'Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Homepage(),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        //child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
