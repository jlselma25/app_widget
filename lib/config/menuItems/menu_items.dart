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
          name: 'cards_screen')

];