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
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.7,
            image: AssetImage(bacImage()),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 310,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 5,),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.scale(scale:2,
                    child: Container(
                      height: 140,
                      width: 140,

                      child: CircularProgressIndicator(
                        strokeAlign: 1.5,
                        color: Colors.orange,
                        value: dateTime.second/60,
                      ),
                    ),
                  ),
                  ...List.generate(
                    60,
                        (index) => Transform.rotate(
                      angle: (index * 6) * pi / 180,
                      child: VerticalDivider(
                        color: (index%5==0)?Colors.white:Colors.white,
                        thickness:(index%5==0)?4:2,
                        endIndent:(index%5==0)? 265:280,
                        indent:0.5,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                  ),
                  Transform.rotate(
                    angle: (dateTime.minute * 6) * pi / 180,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 5,
                      indent: 36,
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
                  Transform.rotate(
                    angle: (dateTime.second * 6) * pi / 180,
                    child: VerticalDivider(
                      color: Colors.red,
                      thickness: 3,
                      indent: 30,
                      endIndent: 98,
                    ),
                  ),

                ],
              ),
            ),
            Align(alignment: Alignment.bottomCenter,
              child: OutlinedButton(
                  style: ButtonStyle(
                    side:WidgetStateProperty.all(
                      BorderSide(
                          color: Colors.grey,width: 2),),),onPressed: () {
                Navigator.of(context).pushNamed('/strap');
              }, child:Text('Next',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                  ,),)),
            ),
          ],
        ),


      ),

    );
  }
}
