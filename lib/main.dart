import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web_dashboard/src/pages/main_page.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_web_ui/ui.dart' as ui;
import 'dart:html';
import 'src/bloc/menu_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ui.platformViewRegistry.registerViewFactory('hello-world-html', (int viewId) => DivElement()..text = 'Hello, World');
    return BlocProvider(
      blocs: [Bloc((i) => MenuBloc())],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(title: TextStyle(color: Colors.black)),
          fontFamily: "Montserrat",
        ),
        home: MainPage(),
      ),
    );
  }
}
