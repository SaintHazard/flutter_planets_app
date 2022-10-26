import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {
  const PlanetRow({super.key});

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      alignment: FractionalOffset.centerLeft,
      child: const Image(
        image: AssetImage("assets/images/mars.png"),
        height: 92.0,
        width: 92.0,
      ),
    );

    final planetCard = Container(
      height: 124,
      margin: const EdgeInsets.only(left: 46.0),
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
      child: Stack(children: [planetCard, planetThumbnail]),
    );
  }
}
