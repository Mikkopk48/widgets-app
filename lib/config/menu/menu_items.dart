import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

List<MenuItem> appMenuItems = [
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Contenedor estulizado',
    link: '/cards',
    icon: Icons.smart_button_outlined,
  ),
];
