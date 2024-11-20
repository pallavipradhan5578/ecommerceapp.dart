import 'package:flutter/material.dart';
import 'package:second_decdart/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.redAccent,
      body: Center(
        child: Text(
          "PDF Viewer",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500,color: Colors.white),
        ),
      ),
    );
  }
}
