import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:clock_daily_task/global.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  State<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
  }

  @override
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
                border: Border.all(color: Colors.white, width: 5),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                  ),
                  Transform.rotate(
                    angle: (dateTime.second * 6) * pi / 180,
                    child: VerticalDivider(
                      color: Colors.red,
                      thickness: 4,
                      indent: 35,
                      endIndent: 98,
                    ),
                  ),
                  Transform.rotate(
                    angle: (dateTime.minute * 6) * pi / 180,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 6,
                      indent: 40,
                      endIndent: 140,
                    ),
                  ),
                  Transform.rotate(
                    angle: (dateTime.hour * 30) * pi / 180,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 9,
                      indent: 70,
                      endIndent: 140,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
