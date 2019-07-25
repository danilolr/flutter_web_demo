import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:flutter_web_dashboard/src/widget/chart_card_tile.dart';
import 'package:flutter_web_dashboard/src/widget/comment_widget.dart';
import 'package:flutter_web_dashboard/src/widget/indicadores_valores.dart';
import 'package:flutter_web_dashboard/src/widget/profile_Widget.dart';
import 'package:flutter_web_dashboard/src/widget/project_widget.dart';
import 'package:flutter_web_dashboard/src/widget/quick_contact.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    Key key,
    @required Size media,
  })  : _media = media,
        super(key: key);

  final Size _media;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
      children: <Widget>[
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IntrinsicHeight(
                    child: IndicadoresValorWidget(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ChartCardTile(
                              cardColor: Color(0xFF7560ED),
                              cardTitle: "Bandwidth usage",
                              subText: "March 2017",
                              icon: Icons.pie_chart,
                              typeText: "50 GB",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ChartCardTile(
                              cardColor: Color(0xFF25C6DA),
                              cardTitle: "Download count",
                              subText: "March 2017",
                              icon: Icons.cloud_upload,
                              typeText: "35487",
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ProjectWidget(media: _media),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              QuickContact(media: _media)
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CommentWidget(media: _media),
              SizedBox(
                width: 20,
              ),
              ProfileWidget(media: _media),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
