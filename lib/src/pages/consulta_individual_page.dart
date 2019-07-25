import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class ConsultaIndividualPage extends StatelessWidget {
  const ConsultaIndividualPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            child: ListView.builder(
              itemCount: 200,
              itemBuilder: (BuildContext context, int index) {
                return Flexible(
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        child: Text("Abc"),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text("Dddd"),
                        flex: 5,
                      ),
                      Expanded(
                        child: Text("777"),
                        flex: 1,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
