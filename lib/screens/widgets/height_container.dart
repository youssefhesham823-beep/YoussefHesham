import 'package:flutter/material.dart';

class HeightContainer extends StatelessWidget {
  final String title;
  final int number;
  final Function(double) onChanged;
  const HeightContainer({super.key, required this.title, required this.number, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Container(
      width: width * 0.9,
      height: height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff333244),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: width * 0.05,
              fontWeight: FontWeight.w300,
              color: Color(0xffFFFFFF),
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$number",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "cm",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: width * 0.04,
                  ),
                ),
              ],
            ),
          ),
          Slider(
            min: 10,
            max: 300,
            activeColor: Color(0xffE83D67),
            value: number.toDouble(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
