import 'package:app_widgets/presentation/providers/counter_provider.dart';
import 'package:app_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CounterScreen extends ConsumerWidget {

   static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final int counterValue = ref.watch(counterProvider);
    final isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const  Text("Counter Screen"),
        actions: [
          IconButton(
             //icon: const Icon(Icons.light_mode_outlined),
             icon:    Icon( isDarkMode == false ? Icons.light_mode_outlined :Icons.dark_mode_outlined),
            onPressed: (){
                ref.read(isDarkModeProvider.notifier).state =!isDarkMode;
                //  ref.read(isDarkModeProvider.notifier).update((state) => !state );

            } , 
            
           )
        ],
      ),
      body: Center(
        child:   Text('Valor: $counterValue',style: Theme.of(context).textTheme.titleLarge,)
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            ref.read(counterProvider.notifier).state++;
           // ref.read(counterProvider.notifier).update((state) => state + 1);
          },     
          
          )
          


    );
  }
}