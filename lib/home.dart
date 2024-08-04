import 'package:flutter/material.dart';
import 'package:clock_daily_task/global.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Actions",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Common Buttons ',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.info_outline)
              ],
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: button(name: "Elevated", size: 15)),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: button(name: "Icon", size: 20),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            WidgetStateProperty.all(Colors.grey.shade300)),
                        onPressed: () {},
                        child: button(
                            name: "Elevated",
                            size: 15,
                            color: Color(0xffA7A3A7)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilledButton(
                          onPressed: () {},
                          child: button(name: "Filled", size: 25)),
                      FilledButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: button(name: "Icon", size: 20),
                      ),
                      FilledButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  Colors.grey.shade300)),
                          onPressed: () {},
                          child: button(
                              name: "Filled", size: 25, color: Colors.grey))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilledButton.tonal(
                          onPressed: () {},
                          child: button(name: "Filled Tonal", size: 15)),
                      FilledButton.tonalIcon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: button(name: "Icon", size: 20),
                      ),
                      FilledButton.tonal(
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  Colors.grey.shade300)),
                          onPressed: () {},
                          child: button(
                              name: "Filled Tonal", size: 15, color: Colors.grey))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                          onPressed: () {},
                          child: button(name: "Outlined", size: 15)),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: button(name: "Icon", size: 20),
                      ),
                      OutlinedButton(
                          style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: button(
                              name: "Outlined", size: 15, color: Colors.grey))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: button(name: "  Text", size: 18)),
                      SizedBox(width: 10,),TextButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: button(name: "Icon", size: 20),
                      ),
                      TextButton(
                          style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: button(
                              name: "Text", size: 15, color: Colors.grey))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 132,top: 10,),
              child: Row(
                children: [
                  Text('Floating action buttons ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.info_outline,size: 18,)
                ],
              ),
            ),
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,
                  border: Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 25),
                    child: Row(
                      children: [
                        FloatingActionButton(onPressed: (){},
                          child: Icon(Icons.add,size: 20,),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: FloatingActionButton(onPressed: (){},
                            child: Icon(
                              Icons.add,size: 20,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: FloatingActionButton(onPressed: (){},
                            child: Text('Create',),
                            ),
                          ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 170,top: 10,),
              child: Row(
                children: [
                  Text('Icon buttons ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.info_outline,size: 18,)
                ],
              ),
            ),
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white,
              border: Border.all(color: Colors.black,width: 1),
              borderRadius: BorderRadius.circular(10)),
           child:  Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.settings)),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.settings_applications)),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.settings_applications_rounded)),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.settings_backup_restore)),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.settings_bluetooth)),


                  ],

                )
              ],
            )
          ),

          ],
        ),
      ),
    );
  }
  Text button(
      {required String name, required double size, Color? color}) {
    return Text(
      "$name",
      style: TextStyle(fontSize: size, color: color),
    );
  }
}