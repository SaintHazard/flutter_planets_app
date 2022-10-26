import 'package:flutter/material.dart';
import 'package:flutter_planets_app/planets/model/planets.dart';
import 'package:flutter_planets_app/planets/ui/home/planet_row.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetRow(planet: planets[0]);
  }
}
