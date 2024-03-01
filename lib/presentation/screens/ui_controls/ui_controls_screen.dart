import 'package:flutter/material.dart';


class UiControlsScreen extends StatelessWidget {

    static const String name = 'ui_controls_screen';
  const  UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text ('UI Controls') ,
        ),

        body: const _UiControlsView(),


    );
  }
}

class _UiControlsView extends StatefulWidget { 
  
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation {car,plane,train,submarine}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool wantsBrerakfast= false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  Transportation trans = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const ClampingScrollPhysics(),
        children: [
            SwitchListTile(
              title: const Text('Developer mode'),
              subtitle: const Text('Controles adicionales'),
              value: isDeveloper, 
              onChanged: (value){
                
                setState(() {
                  isDeveloper= !isDeveloper;
                });

              }
              ),

               ExpansionTile(
                title:   const Text('Vehiculo de transporte'),
                subtitle: Text('$trans'),
                children: [

                  RadioListTile(
                  title: const Text('by car'),
                  subtitle: const Text('Travel by car'),
                  value: Transportation.car, 
                  groupValue: trans, 
                  onChanged: (value)=> setState(() {
                      trans = Transportation.car;
                  })
                  ),

                  RadioListTile(
                    title: const Text('by plane'),
                    subtitle: const Text('Travel by plane'),
                    value: Transportation.plane, 
                    groupValue: trans, 
                    onChanged: (value)=> setState(() {
                        trans = Transportation.plane;
                    })
                    ),

                  RadioListTile(
                    title: const Text('by train'),
                    subtitle: const Text('Travel by train'),
                    value: Transportation.train, 
                    groupValue: trans, 
                    onChanged: (value)=> setState(() {
                        trans = Transportation.train;
                    })
                    ),

                  RadioListTile(
                    title: const Text('by submarine'),
                    subtitle: const Text('Travel by submarine'),
                    value: Transportation.submarine, 
                    groupValue: trans, 
                    onChanged: (value)=> setState(() {
                        trans = Transportation.submarine;
                    })
                    ),


                ],
                ),


              ExpansionTile(
                title: const Text ('Type pension'),
                children: [

                  CheckboxListTile(
                  title: const Text('Wants breakfast?'),
                  value: wantsBrerakfast, 
                  onChanged: (value)=> setState(() {
                     wantsBrerakfast=!wantsBrerakfast;
                  })
                  ),

                   CheckboxListTile(
                  title: const Text('Wants lunch?'),
                  value: wantsLunch, 
                  onChanged: (value)=> setState(() {
                     wantsLunch=!wantsLunch;
                  })
                  ),

                   CheckboxListTile(
                  title: const Text('Wants dinner?'),
                  value: wantsDinner, 
                  onChanged: (value)=> setState(() {
                      wantsDinner=!wantsDinner;
                  })
                  )
                ],  
                
                ),

               


             



        ],


    );
  }
}