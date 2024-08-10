import 'package:clock_daily_task/strap_clock.dart';
import 'package:flutter/material.dart';
import 'package:clock_daily_task/home.dart';
import 'package:clock_daily_task/global.dart';
import 'package:clock_daily_task/analog_clock.dart';
import 'package:clock_daily_task/clock.dart';
import 'package:clock_daily_task/timer_clock.dart';


void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/':(context)=>Clock(),
        '/analog':(context)=>AnalogClock(),
        '/strap':(context)=>StrapWatch(),
        '/timer':(context)=>TimerClock(),
      },
    );
  }
}
