import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name ='snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbak = SnackBar(
      content: const Text('Hola SnackBar'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
      );

    ScaffoldMessenger.of(context).showSnackBar(snackbak);
  }

  void openDialo(BuildContext  context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: ((context) => AlertDialog(
        title: const Text('Estas Seguro'),
        content: const Text('Nulla cillum et qui tempor ut culpa. Do consectetur dolore deserunt ad duis cillum sint labore eu laborum enim aliqua sit officia. Tempor sunt laboris culpa dolore occaecat adipisicing sit aute cillum. Ipsum incididunt aute irure irure. Pariatur ipsum voluptate nulla amet mollit ad ipsum qui exercitation eiusmod non aliqua fugiat.'),
        actions: [
          TextButton(onPressed: ()=>context.pop(), child: const Text('Cancelar')),

          FilledButton(onPressed: ()=>context.pop(), child: const Text('Aceptar'))
        ],

    )
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mostrar Snackbar'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal
            (onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  const Text('Culpa et aliquip ut sint exercitation non. Pariatur enim anim voluptate consectetur aliqua occaecat amet pariatur do. Sunt mollit voluptate minim est duis est veniam enim laboris officia commodo. Ex labore adipisicing reprehenderit dolore labore ullamco et veniam fugiat sint cillum ex tempor.')
                ]
                );
            }, 
            child: const Text('Licencias usadas')),

            FilledButton.tonal(
              onPressed: ()=>openDialo(context), child: const Text('Mostrar Dialogo'))
          ],
        ),
      ),

      floatingActionButton:  FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context), 
        label: const Text('Mostrar Snackbar'), 
        icon: Icon(Icons.remove_red_eye_outlined),),
    );
  }
}