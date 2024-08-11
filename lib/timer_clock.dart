import 'dart:async';
import 'package:clock_daily_task/global.dart';
import 'package:flutter/material.dart';

class TimerClock extends StatefulWidget {
  const TimerClock({super.key});

  @override
  State<TimerClock> createState() => _TimerClockState();
}

class _TimerClockState extends State<TimerClock> {
  void timerlogic() {
    Timer.periodic(
      Duration(seconds: 1),
          (timer) {
        setState(() {
          if (timerstop) {
            timersecond--;
            if (timersecond < 0) {
              timerminute--;
              timersecond = 59;
              if (timerminute < 0) {
                timerhour--;
                timerminute = 59;
                timersecond = 59;
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
    timerlogic();
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
            image: AssetImage('assets/img/6.jpeg'),
          ),
        ),
          alignment: Alignment.center,
          child: Stack(
              alignment: Alignment.center,
              children: [
              Text(
                "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}",
                style: const TextStyle(
                color: Colors.white,
                 fontSize: 80,
                    fontWeight: FontWeight.bold,
                    height: -5),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextField(
                            controller: ctrhour,
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white,fontSize: 18),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Hour',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                                  hintText: 'Enter',
                                  hintStyle: TextStyle(
                                   fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54),
                                ),
                             ),
                            ),
                        SizedBox(
                          width: 100,
                          child: TextField(
                            controller: ctrminute,
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white,fontSize: 18),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Minute',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              hintText: 'Enter',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: TextField(
                            controller: ctrsecond,
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white,fontSize: 18),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Second',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              hintText: 'Enter',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white),),
                              onPressed: (){
                              setState(() {
                                timerstop = true;
                                timersecond=int.parse(ctrsecond.text);
                                timerminute=int.parse(ctrminute.text);
                                timerhour=int.parse(ctrhour.text);
                              });
                          }, child: Text(
                            'Start', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Colors.white),),
                              onPressed: (){
                              timerstop = false;
                          }, child: Text(
                            'Pause',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Colors.white),),
                            onPressed: (){
                              timerstop = false;
                              timersecond=0;
                              timerminute=0;
                              timerhour=0;
                            }, child: Text(
                            'Reset',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
    ],
    ),
      ),
    );
  }
}
