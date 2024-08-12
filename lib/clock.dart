import 'package:flutter/material.dart';
import 'package:clock_daily_task/global.dart';
import 'package:clock_daily_task/analog_clock.dart';
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
                image: AssetImage(bacImage()),
            ),
        ),
        child: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    '${(dateTime.hour>12) ? (dateTime.hour%12).toString().padLeft(2,'0') : (dateTime.hour).toString().padLeft(2,'0')} : ${(dateTime.minute).toString().padLeft(2,'0')}',style: TextStyle(
                    fontSize: 80,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),),
               SizedBox(width: 10,),
                Text('${dateTime.second.toString().padLeft(2,'0')} : ${(dateTime.hour>=12)?'PM':'AM'}',style: (TextStyle(
                    color: Colors.white,
                    height: -2,
                    fontWeight: FontWeight.bold,
                    fontSize: 28)),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${days[dateTime.weekday-1]} ${dateTime.day} ${months[dateTime.month-1]}',style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),),
              ],
            ),
            Spacer(flex: 4,),
            OutlinedButton(style: ButtonStyle(
              side:WidgetStateProperty.all(
                BorderSide(
                    color: Colors.white,
                    width: 3),),
            ),
                onPressed: () {
              Navigator.of(context).pushNamed('/analog');
            }, child:Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,),),
            ),
            Spacer(),
          ],

        ),

      ),
    );
  }
}
