import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;
  final Color? color;
  const GenderContainer({super.key,required this.title, required this.icon, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return
       InkWell(
         onTap: onTap,
         child: Container(
          width: width * 0.42,
          height: height * 0.23,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, size: width * 0.25, color: Color(0xffFFFFFF)),
              Text(
                title,
                style: TextStyle(
                  color: Color(0xff8B8C9E),
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
         ),
       );
  }
}
