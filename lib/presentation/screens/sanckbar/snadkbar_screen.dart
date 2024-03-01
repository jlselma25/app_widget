import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


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

  void OpenDialog(BuildContext context){
      showDialog(
        barrierDismissible: false ,
        context: context, 
        builder: (context) =>  AlertDialog(
          title: const Text('Estas seguro?'),
          content: const Text('Mensaje en botellMensaje en botellaMensaje en botellaMensaje en botella Mensaje en botellaMensaje en botella Mensaje en botellaa'),
          icon: const Icon(Icons.warning),
          actions: [
            TextButton(
              onPressed: () => context.pop(), 
              child: const Text('Cancelar')
              ),

              FilledButton(
                onPressed: () => context.pop(), 
              child: const Text('Aceptar')
              )
          ],
        )
        
        
        );
  }


    return Scaffold(
      appBar: AppBar(
        title: const Text('Sanckbars and dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed:(){
                showAboutDialog(context: context,
                children: [
                  const Text('Mensaje en una botellaMensaje en una botellaMensaje en una botellaMensaje en una botellaMensaje en una botellaMensaje en una botellaMensaje en una botellaMensaje en una botella')
                ]
                );
              }, 
              child: const Text('Licencias usadas')),

              FilledButton.tonal(
              onPressed:(){
                OpenDialog(context);
              }, 
              child: const Text('Mostrar dialogo'))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
         onPressed: () => ShowSnackBar(context), // otra manera de hacerlo con el codigo creado para la funcion ShowSnackBar de arriba
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