import 'package:flutter/material.dart';
import 'package:clock_daily_task/home.dart';
import 'package:clock_daily_task/global.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Home(),
    );
  }
}
