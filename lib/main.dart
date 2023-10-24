import 'package:flutter/material.dart';

import 'View/android/homepage.dart';

void main() {
  runApp(ACI());
}

class ACI extends StatefulWidget {
  const ACI({super.key});

  @override
  State<ACI> createState() => _ACIState();
}

class _ACIState extends State<ACI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
