import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  const GradientAppBar(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: barHeight,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFF3366FF),
          Color(0xFF00CCFF),
        ],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(1.0, 1.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      )),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
