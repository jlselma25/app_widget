//import 'package:flutter/material.dart' show IconData; con esto indicamos que solo vamos a usar IconDate de material.dart

import 'package:flutter/material.dart';


class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final String name;

  const MenuItems( {
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon,
    required this.name
    });
}
    //const appMenuItems =<MenuItems>[]; tambien se puede hacer lo mismo que esta abajo

   const List<MenuItems> appMenuItems =[

    MenuItems(
        title: 'Counter Rivepod', 
        subTitle:'Riverpod introduction' , 
        link: '/counter', 
        icon: Icons.add,
        name: 'counter_screen'),

     MenuItems(
        title: 'Botonos', 
        subTitle:'Varios botones en flutter' , 
        link: '/buttons', 
        icon: Icons.smart_button_outlined,
        name: 'buttons_screen'),

        MenuItems(
        title: 'Tarjetas', 
        subTitle:'Un contenedor estilizado' , 
        link: '/cards', 
        icon: Icons.credit_card,
          name: 'cards_screen'),

        MenuItems(
        title: 'Progress indicator', 
        subTitle:'Generales y controlados' , 
        link: '/progress', 
        icon: Icons.refresh_rounded,
          name: 'progress_screen'),

        MenuItems(
        title: 'Snackbars and dialogs', 
        subTitle:'Indicators screen' , 
        link: '/snackbar', 
        icon: Icons.info_outline,
          name: 'snackbar_screen'),

        MenuItems(
        title: 'Animated container', 
        subTitle:'Stateful widget animado' , 
        link: '/animated', 
        icon: Icons.check_box_outline_blank_rounded,
          name: 'animated_screen'),

        MenuItems(
        title: 'UI Controls + Tiles ', 
        subTitle:'A controls serie of Flutter' , 
        link: '/ui-controls', 
        icon: Icons.car_rental_outlined,
          name: 'ui_controls_screen'),

        MenuItems(
        title: 'App tutorial ', 
        subTitle:'Little tutorial of app' , 
        link: '/tutorial', 
        icon: Icons.accessible_rounded,
          name: 'tutorial_screen'),


         MenuItems(
        title: 'Infinite Scroll and Pull ', 
        subTitle:'Infinite lists and pull to refresh' , 
        link: '/scroll', 
        icon: Icons.list_alt_rounded,
          name: 'scroll_screen')

];

