import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override

  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2),
            () {
          Navigator.of(context).pushReplacementNamed('/clock');
        },
    );
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/logo.jpg'),
                      )
                  ),
                ),
                Text('Clock App',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
              ],
            ),
          ),
    );
  }
}
