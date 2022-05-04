import 'package:flutter/material.dart';
import 'package:structuremaking/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text("Welcome to $days days of flutter by $name"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
          children: [
            UserAccountsDrawerHeader(
              accountEmail: const Text(
                "email@gmail.com",
                style: TextStyle(fontSize: 18),
              ),
              accountName: const Text(
                "Your Name",
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                    // backgroundImage: new NetworkImage(assets/abc.png),
                    ),
                // ignore: avoid_print
                onTap: () => print("This is your current account."),
              ),
            ),
            ListTile(
              tileColor: const Color.fromARGB(255, 68, 31, 162),
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
