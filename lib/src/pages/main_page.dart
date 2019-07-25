import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web_dashboard/src/bloc/menu_bloc.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';
import 'package:flutter_web_dashboard/src/widget/responsive_widget.dart';
import 'package:flutter_web_dashboard/src/widget/sidebar_menu..dart';

import 'consulta_atendimento_page.dart';
import 'consulta_individual_page.dart';
import 'dashboard_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuBloc menuBloc = BlocProvider.getBloc<MenuBloc>();
    final _media = MediaQuery.of(context).size;
    print(_media);
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ResponsiveWidget.isLargeScreen(context) ? SideBarMenu() : Container(),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 55,
                  width: _media.width,
                  child: AppBar(
                    elevation: 4,
                    centerTitle: true,
                    title: Text(
                      "Flutter Dashboard Web",
                    ),
                    backgroundColor: drawerBgColor,
                  ),
                ),
                Expanded(
                  child: StreamBuilder<int>(
                      stream: menuBloc.streamMenu,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return CircularProgressIndicator();
                        }
                        if (snapshot.data == 0) {
                          return DashboardPage(media: _media);
                        }
                        if (snapshot.data == 1) {
                          return ConsultaAtendimentoPage();
                        }
                        if (snapshot.data == 2) {
                          return new ConsultaIndividualPage();
                        }
                        return Container(width: double.infinity, height: double.infinity, color: Colors.black);
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
