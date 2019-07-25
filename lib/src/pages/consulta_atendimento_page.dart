import 'package:flutter_web/material.dart';

class ConsultaAtendimentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(width: double.infinity, height: 50, color: Colors.yellow),
        Expanded(child: Container(width: double.infinity, color: Colors.blue)),
      ],
    );
  }
}
