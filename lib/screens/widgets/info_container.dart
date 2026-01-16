import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String title;
  final int number;
  final void Function()? increaseOnPressed;
  final void Function()? decreasOnPressed;
  const InfoContainer({super.key, required this.title, required this.number, this.increaseOnPressed, this.decreasOnPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Container(
      width: width * 0.42,
      height: height * 0.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff24263B),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title,
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: width * 0.05)),
          Text("$number",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: width * 0.1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.small(
                heroTag: '$title 1',
                onPressed: decreasOnPressed,
                backgroundColor: Color.fromARGB(255, 119, 118, 118),
                child: Icon(Icons.remove, color: Colors.white),
              ),
              FloatingActionButton.small(
                heroTag: '$title 2',
                onPressed: increaseOnPressed,
                backgroundColor: Color.fromARGB(255, 119, 118, 118),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          )
        ],
      ),
      );
  }
}
