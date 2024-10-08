import 'dart:async';
import 'package:clock_daily_task/global.dart';
import 'package:flutter/material.dart';

class StrapWatch extends StatefulWidget {
  const StrapWatch({super.key});

  @override
  State<StrapWatch> createState() => _StrapWatchState();
}

class _StrapWatchState extends State<StrapWatch> {
  void strapwatchlogic() {
    Timer.periodic(
      Duration(seconds: 1),
          (timer) {
        setState(() {
          if(stop)
          {
            second++;
            if (second > 59) {
              minute++;
              second=0;
              if (minute > 59) {
                hour++;
                minute=0;
                second=0;
              }
            }
          }
        });
      },
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    strapwatchlogic();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/6.jpeg'), ),
          ),
          alignment: Alignment.center,
          child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                "${hour.toString().padLeft(2,'0')}:${minute.toString().padLeft(2,'0')}:${second.toString().padLeft(2,'0')}",
                  style: const TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  height: -5
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 100),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop=true;
                            });
                          },
                          child: const Text(
                            'Start',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                        ),
                        ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop=false;
                            });
                          },
                          child: const Text(
                            'Pause',
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        ElevatedButton(style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.white24)),
                          onPressed: () {
                            setState(() {
                              stop=false;
                              second=0;
                              minute=0;
                              hour=0;
                            });
                          },
                          child: const Text(
                            'Reset',
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                  ),
                ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 110),
                     child: Align(alignment: Alignment.bottomCenter,
                        child: OutlinedButton(
                         style: ButtonStyle(
                          side:WidgetStateProperty.all(
                           BorderSide(
                            color: Colors.white,width: 3),),),
                                  onPressed: () {
                                   Navigator.of(context).pushNamed('/timer');
                                   }, child:Text('Next',
                                         style: TextStyle(
                                         fontSize: 24,
                                         color: Colors.white,
                                           fontWeight: FontWeight.w600,),),
                        ),
                     ),
                   ),
              ],
            ),
          ],
          ),
      ),
    );
  }
}