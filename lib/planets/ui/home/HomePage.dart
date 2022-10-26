import 'package:flutter/material.dart';
import 'package:flutter_planets_app/planets/ui/home/GradientAppBar.dart';
import 'package:flutter_planets_app/planets/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          GradientAppBar("treva"),
          HomePageBody(),
        ],
      ),
    );
  }
}
