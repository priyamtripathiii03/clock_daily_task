import 'package:flutter/material.dart';
import 'package:clock_daily_task/global.dart';
import 'dart:async';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  void initState(){
    super.initState();
    Timer.periodic(const Duration(seconds:1), (timer){
      setState(() {
        dateTime=DateTime.now();
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage('assets/img/night.jpeg'),
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('01:00'),
          ],
        ),
      ),
    );
  }
}
