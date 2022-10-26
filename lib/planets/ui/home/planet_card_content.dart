import 'package:flutter/material.dart';
import 'package:flutter_planets_app/planets/model/planet.dart';

class PlanetCardContent extends StatelessWidget {
  final Planet planet;
  const PlanetCardContent({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    const baseTextStyle = TextStyle(fontFamily: 'Poppins');
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xffb6b2df),
        fontSize: 9.0,
        fontWeight: FontWeight.w400);
    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

    Widget _planetValue({required String value, required String image}) {
      return Row(children: <Widget>[
        Image.asset(image, height: 12.0),
        Container(width: 8.0),
        Text(planet.gravity, style: regularTextStyle),
      ]);
    }

    return Container(
      margin: const EdgeInsets.fromLTRB(76, 16, 16, 16),
      constraints: const BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4,
          ),
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          Container(
            height: 10,
          ),
          Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: const Color(0xff00c6ff)),
          Row(
            children: [
              Expanded(
                  child: _planetValue(
                      value: planet.distance,
                      image: "assets/images/ic_distance.png")),
              Expanded(
                  child: _planetValue(
                      value: planet.gravity,
                      image: "assets/images/ic_gravity.png")),
            ],
          )
        ],
      ),
    );
  }
}
