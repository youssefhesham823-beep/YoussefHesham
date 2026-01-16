import 'package:bmi/screens/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';

class RuseltScreen extends StatelessWidget {
  final double bmi;
   RuseltScreen({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your Result!',style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(getStatusText(),style: TextStyle(
                  color: Colors.green,
                    fontSize: 30,
                  ),
              ),
                  Text(bmi.toStringAsFixed(2),style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text(statusBody,style: TextStyle(
                    color: Color(0xff888C9E),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                    textAlign: TextAlign.center,
                  )
                ]
              )
              ),
          ]
        ),
      ),
    );
  }

 String statusBody='';
 String getStatusText(){
   statusBody='You are underweight. Try to eat more!';
    if(bmi < 18.5){
      return 'Underweight';
    }else if(bmi >= 18.5 && bmi < 25){
      statusBody = 'You have a normal body weight. Good job!';
      return 'Normal';
    }else if(bmi >= 25 && bmi < 30){
      statusBody = 'You are overweight. Try to exercise more!';
      return 'Overweight';
    }else{
      statusBody = 'You are obese. it is very dangerous!, consult a doctor';
      return 'Obese';
    }
 }
}
