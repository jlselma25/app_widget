import 'package:flutter/material.dart';


class SnackBarScreen extends StatelessWidget {

    static const String name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void ShowSnackBar (BuildContext context)
  {
       ScaffoldMessenger.of(context).clearSnackBars();
      final snackBar = SnackBar(
        content: const Text('Hola mundo22'),
        action: SnackBarAction(label: 'OK!!', onPressed: (){}),
        duration: const Duration(seconds: 2),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sanckbars and dialogs'),
      ),

      floatingActionButton: FloatingActionButton.extended(
         onPressed: () => ShowSnackBar(context), // otra manera de hacerlo con el codigo creado para funcion ShowSnackBar de arriba
       // onPressed: (){  
       //   ScaffoldMessenger.of(context).showSnackBar(
       //     const SnackBar(content:   Text('Hola mundo'))
       //   );
      //  }, 
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        ),
    );
  }
}