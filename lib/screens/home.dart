import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/services/auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: [ElevatedButton(onPressed: () async {
            await _auth.signOut();
          }, child: const Icon(Icons.logout)
          )
          ],
        ),
        body: Center(
          child: Text("Welcome to Home Page"),
        ),
      ),
    );
  }
}