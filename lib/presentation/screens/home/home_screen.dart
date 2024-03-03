import 'package:app_widgets/config/menuItems/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(        
        title: const Text('Flutter + Material 3'),
      ),

      body:  _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
    

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context,index){
        
          final itemsMenu = appMenuItems[index];
      
        return _CustomListTile(itemsMenu: itemsMenu);
      }  
      
      
      );
      
     
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItems itemsMenu;
 
  const _CustomListTile({  
    required this.itemsMenu,
  });

       

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
          leading: Icon(itemsMenu.icon,color: colors.primary,),
          title: Text(itemsMenu.title),
          subtitle: Text(itemsMenu.subTitle),
          trailing:  Icon(Icons.arrow_forward_ios_rounded,color: colors.primary,),
          onTap: (){
          //  Navigator.of(context).push(
          //      MaterialPageRoute(
          //        builder: (context) => const ButtonsScreen(),
         //       )
         //   );
            //
           // Navigator.pushNamed(context, itemsMenu.link);           

          // context.push(itemsMenu.link);
           context.pushNamed(itemsMenu.name);

          },
          
          
    
    
    
    );
  }
}