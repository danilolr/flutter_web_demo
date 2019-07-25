import 'package:flutter_web/material.dart';

class Menu {
  String title;
  IconData icon;
  int codigo;

  Menu({this.title, this.icon, this.codigo});
}

List<Menu> menuItems = [
  Menu(title: "Dashboard", icon: Icons.dashboard, codigo: 0),
  Menu(title: "Notifications", icon: Icons.notification_important, codigo: 1),
  Menu(title: "Web UI", icon: Icons.web, codigo: 2),
  Menu(title: "Charts", icon: Icons.insert_chart, codigo: 3),
];
