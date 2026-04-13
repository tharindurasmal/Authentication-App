import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/authentication/authenticate.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Authenticate();
      
  }
}