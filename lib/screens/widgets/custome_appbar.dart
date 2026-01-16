import 'package:flutter/material.dart';

class CustomeAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return
      AppBar(
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
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
