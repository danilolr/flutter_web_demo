import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import 'card_tile.dart';

class IndicadoresValorWidget extends StatelessWidget {
  IndicadoresValorWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CardTile(
          iconBgColor: Colors.orange,
          cardTitle: "Booking",
          icon: Icons.flight_takeoff,
          subText: "Todays",
          mainText: "230",
        ),
        SizedBox(width: 20),
        CardTile(
          iconBgColor: Colors.pinkAccent,
          cardTitle: "Website Visits",
          icon: Icons.show_chart,
          subText: "Tracked from Google Analytics",
          mainText: "3.560",
        ),
        SizedBox(width: 20),
        CardTile(
          iconBgColor: Colors.green,
          cardTitle: "Revenue",
          icon: Icons.home,
          subText: "Last 24 Hours",
          mainText: "2500",
        ),
        SizedBox(width: 20),
        CardTile(
          iconBgColor: Colors.lightBlueAccent,
          cardTitle: "Followors",
          icon: Icons.unfold_less,
          subText: "Last 24 Hours",
          mainText: "112",
        ),
      ],
    );
  }
}
