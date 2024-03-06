import 'dart:io';

import 'package:app_widgets/config/menuItems/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerHome extends StatefulWidget {
  final GlobalKey<ScaffoldState> scafoldKey;

  const DrawerHome({
    super.key, 
    required this.scafoldKey}
    );

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {

    int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch= MediaQuery.of(context).viewPadding.top > 35;

    //if (Platform.isAndroid){ print ('Android $hasNotch');}
     
   // else {print ('IOS$hasNotch');}
      

    return  NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value){
        setState(() {
          navDrawerIndex = value;
          print(navDrawerIndex);
         
        });

        // switch(navDrawerIndex)
        // {
        //     case 0: context.push('/buttons');
        //     case 1: context.push('/cards');
        //     case 2: context.push('/progress');
        //     case 3: context.push('/snackbar');
        //     case 4: context.push('/animated');
        //     case 5: context.push('/ui-controls');

        // }

           final itemMenu = appMenuItems[navDrawerIndex];
            context.pushNamed(itemMenu.name);
            widget.scafoldKey.currentState?.closeDrawer();

        
      },
      children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20 ,16, 10),
            child: const Text('Main'),
          ),
          //  const NavigationDrawerDestination(
          //   icon: Icon(Icons.add), 
          //   label:  Text('Home screen')
            
          //   ),

          //    const NavigationDrawerDestination(
          //   icon: Icon(Icons.delete), 
          //   label: Text('Other screen')
            
          //   ),

          ...appMenuItems
            .sublist(0,3)
            .map((item) => NavigationDrawerDestination(
             icon: Icon(item.icon), 
             label:  Text(item.title)
             )
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 20),
            child: Divider(),
            ),


             Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20 ,16, 10),
            child: const Text('Others options'),
          ),

              ...appMenuItems
            .sublist(3)
            .map((item) => NavigationDrawerDestination(
             icon: Icon(item.icon), 
             label:  Text(item.title)
             )
          ),



      ]
      
      );
  }
}