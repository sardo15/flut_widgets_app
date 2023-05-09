import 'package:flutter/material.dart';

class MenuItem{

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon});

}

const appMenuItems = <MenuItem>[

  MenuItem(
      title: 'Botones', 
      subtitle: 'Varios botoones en Flutter', 
      link: '/buttons', 
      icon: Icons.smart_button_outlined),

  MenuItem(
      title: 'Tarjetas', 
      subtitle: 'Un contenedor estilizado', 
      link: '/cards', 
      icon: Icons.credit_card),

  
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_rounded ,
  ),

  MenuItem(
    title: 'Snackbars and dialogs',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),

  MenuItem(title: 'Animated Container', subtitle: 'Statefull widget animado', link: '/animated', icon: Icons.check_box_outline_blank_outlined),

  MenuItem(title: 'UI Controls + Tiles', subtitle: 'Una serie de controles de flutter', link: '/ui-controls', icon: Icons.car_rental_outlined),

  MenuItem(title: 'App Tutorial', subtitle: 'Tutorial de la App', link: '/tutorial', icon: Icons.accessible_outlined)

  
];