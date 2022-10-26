import 'package:flutter/material.dart';
import 'package:flutter_planets_app/planets/model/planet.dart';
import 'package:flutter_planets_app/planets/ui/home/planet_card_content.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;
  const PlanetRow({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    final planetCard = Container(
      height: 124,
      margin: const EdgeInsets.only(
        left: 46.0,
      ),
      decoration: BoxDecoration(
          color: const Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            )
          ]),
    );
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Stack(children: [
        planetCard,
        PlanetCardContent(planet: planet),
        planetThumbnail
      ]),
    );
  }
}
