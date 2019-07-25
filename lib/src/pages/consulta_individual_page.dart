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
            child: HtmlView(viewType: 'hello-world-html'),
          ),
        )
      ],
    );
  }
}
