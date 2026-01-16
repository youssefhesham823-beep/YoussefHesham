import 'package:bmi/screens/ruselt_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi/screens/widgets/gender_container.dart';
import 'package:bmi/screens/widgets/info_container.dart';
import 'package:bmi/screens/widgets/height_container.dart';
import 'package:bmi/screens/widgets/custome_appbar.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = false;
  bool isFemale = false;
  int userHeight = 100;
  int userWeight = 30;
  int userAge = 10;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      appBar: CustomeAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: GenderContainer(
                    title: "Male",
                    icon: Icons.male,
                    color:isMale? Color(0xffE83D67): Color(0xff24263B),
                    onTap: (){
                      setState(() {
                        isMale = true;
                        isFemale = false;
                      });
                    },
                  )),
                  SizedBox(width: 9),
                  Expanded(child: GenderContainer(
                    title: "Female",
                    icon: Icons.female,
                    color:isFemale? Color(0xffE83D67): Color(0xff24263B),
                    onTap: (){
                      setState(() {
                        isMale = false;
                        isFemale = true;
                      });
                    },
                  )),
                ],
              ),
              SizedBox(height: height * 0.03),
              HeightContainer(
                title: "Height",
                number: userHeight,
                onChanged: (value) {
                  setState(() {
                    userHeight = value.toInt();
                  });
                },
              ),
              SizedBox(height: height * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoContainer(title: "Weight", number: userWeight, increaseOnPressed: (){
                    setState(() {
                      userWeight++;
                    });
                  }, decreasOnPressed: () {
                    if(userWeight > 30){
                      setState(() {
                        userWeight--;
                      });
                    }
                  }),
                  InfoContainer(title: "Age", number: userAge, increaseOnPressed: (){
                    setState(() {
                      userAge++;
                    });
                  }, decreasOnPressed: () {
                    if(userAge > 10){
                      setState(() {
                        userAge--;
                      });
                    }
                  }),
                ],
              ),
              SizedBox(height: height * 0.04),

            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          double finalHeight = userHeight / 100;
          double bmiResult = userWeight / pow(finalHeight, 2);
          Navigator.push(context, MaterialPageRoute(builder: (value)=>RuseltScreen(
            bmi: bmiResult,
          )));
        },
        child: Container(
          alignment: Alignment.center,
          height: height * 0.10,
          width: width * 0.9,
          color: Color(0xffE83D67),
          child: Text('Calculate',style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),)
          ,
        ),
      ),
    );
  }
}