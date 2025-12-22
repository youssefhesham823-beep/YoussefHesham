import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff1C2135),
        appBar: AppBar(
          backgroundColor: Color(0xff24263B),
          title: Text(
            "BMI Calculator",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
          child:
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 155,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff24263B),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.male, size: 100, color: Color(0xffFFFFFF)),
                            Text(
                              "Male",
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 9),
                    Expanded(
                      child: Container(

                        width: 155,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff333244),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                              color: Color(0xffFFFFFF),
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  width: 319,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff333244),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "150",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "cm",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Slider(
                        activeColor: Color(0xffE83D67),
                        value: .5,
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 18),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 155,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff24263B),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Weight",
                                style: TextStyle(color: Color(0xffFFFFFF),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),),
                              Text("60", style: TextStyle(color: Color(0xffFFFFFF),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton.small(onPressed: (){},
                                    backgroundColor: Color.fromARGB(255, 119, 118, 118),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child: Icon(Icons.remove, color: Color(0xffFFFFFF),), ),


                                  FloatingActionButton.small(onPressed: (){},
                                    backgroundColor: Color.fromARGB(255, 119, 118, 118),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child: Icon(Icons.add, color: Color(0xffFFFFFF),), ),

                                ],
                              )
                            ]
                        )
                    ),
                    Container(
                        width: 155,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff333244),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Age",
                                style: TextStyle(color: Color(0xffFFFFFF),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),),
                              Text("19", style: TextStyle(color: Color(0xffFFFFFF),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton.small(onPressed: (){},
                                    backgroundColor: Color.fromARGB(255, 119, 118, 118),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child: Icon(Icons.remove, color: Color(0xffFFFFFF),), ),


                                  FloatingActionButton.small(onPressed: (){},
                                    backgroundColor: Color.fromARGB(255, 119, 118, 118),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child: Icon(Icons.add, color: Color(0xffFFFFFF),), ),

                                ],
                              )
                            ]
                        )
                    ),
                  ],
                ),

                SizedBox(height: 27),
                Container(
                  color: Color(0xffE83D67),
                  width: 360,
                  height: 100,
                  child: Center(child: Text("Calculate", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 32,fontWeight: FontWeight.w300 , ))),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}