import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayWave',
      theme: ThemeData(
         primarySwatch: const MaterialColor(0xFF1C4262, {
          50: Color(0xFF122D41),
          100: Color(0xFF122D41),
          200: Color(0xFF122D41),
          300: Color(0xFF122D41),
          400: Color(0xFF122D41),
          500: Color(0xFF122D41),
          600: Color(0xFF122D41),
          700: Color(0xFF122D41),
          800: Color(0xFF122D41),
          900: Color(0xFF122D41),
        }),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 66, 98),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 28, 66, 98),
              ),
              child: Text(
                'Welcome to PayWave',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text('Drawer Item 1'),
              onTap: () {
                // Add your drawer item 1 logic here
              },
              leading: const Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
            ListTile(
              title: const Text('Drawer Item 2'),
              onTap: () {
                // Add your drawer item 2 logic here
              },
              leading: const Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 28, 66, 98),
            height: 350,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 110,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'AIdevol',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'your-email@email.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'BALANCE \$4,180.20',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('TRANSFER'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 38, 83, 120),
                    child: Icon(Icons.payment),
                  ),
                  title: Text('Lorem Ipsum Company'),
                  subtitle: Text('\$2,030.80 Received payment'),
                ),
                const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 38, 83, 120),
                    child: Icon(Icons.payment),
                  ),
                  title: Text('Auctor Elit Ltd'),
                  subtitle: Text('\$450.00 Transfer money'),
                ),
                const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 38, 83, 120),
                    child: Icon(Icons.payment),
                  ),
                  title: Text('Lectus Sit Amet est'),
                  subtitle: Text('\$239.50 Gas & electricity payment'),
                ),
                const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 38, 83, 120),
                    child: Icon(Icons.payment),
                  ),
                  title: Text('Congue Quisque'),
                  subtitle: Text('\$1,500 Withdraw money'),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'more>>',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
