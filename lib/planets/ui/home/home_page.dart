import 'package:flutter/material.dart';
import 'package:flutter_planets_app/planets/ui/home/gradient_app_bar.dart';
import 'package:flutter_planets_app/planets/ui/home/home_page_body.dart';

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
