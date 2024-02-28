
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
          title: const Text('Buttons screen'),
        ),

        body: const _ButtonsView(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.pop();
          //  Navigator.of(context).pop(); hace lo mismo que el codigo anterior
          },
        ),



    );
  }
}

class _ButtonsView extends StatelessWidget {
    
  
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
      final colors = Theme.of(context).colorScheme;

    return  SizedBox(
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Wrap(        
          spacing: 10, 
            alignment: WrapAlignment.center,       
          children: [
            ElevatedButton( onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton( onPressed: null, child:  Text('Elevated disable')),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarms_rounded), 
              label: const Text('Elevated Icon')),

              FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.accessibility_new), label: const Text('Fill Icon')),
            OutlinedButton(onPressed: (){}, child: const Text('OutLine')),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.add_a_photo_rounded), label: const Text('OutLine Icon')),
            TextButton(onPressed: (){}, child: const Text('TextButton')),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.terminal), label: const Text('TextButton Icon')),
            IconButton(onPressed: (){} , icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_rounded),
              style:  ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
               
              ),
              ),

              _CustonButton(colorTheme: colors)
          ],
        ),
      
      ),
    );
  }
}


class _CustonButton extends StatelessWidget {
  final ColorScheme colorTheme;
  const _CustonButton({super.key, required this.colorTheme});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colorTheme.primary,
        child:  InkWell(
          onTap: (){},
          child:  const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Text('Custom button',style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
