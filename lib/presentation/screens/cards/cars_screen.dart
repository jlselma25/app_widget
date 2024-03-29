
import 'package:flutter/material.dart';


const cards = <Map<String,dynamic>>[
{'elevation': 0.0,'label': 'Elevation 0'},
{'elevation': 1.0,'label': 'Elevation 1'},
{'elevation': 2.0,'label': 'Elevation 2'},
{'elevation': 3.0,'label': 'Elevation 3'},
{'elevation': 4.0,'label': 'Elevation 4'},
{'elevation': 5.0,'label': 'Elevation 5'},

];

class CardsScreen extends StatelessWidget {
    static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
          title: const Text('Cards screen'),
        ),

        body: const _CardsView(),



    );
  }
}

class _CardsView extends StatelessWidget {


  const _CardsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return  SingleChildScrollView(
      child: Column(
      
          children: [
      
                ...cards.map((value) => _CardType1(label: value['label'],elevation: value['elevation'])),
                ...cards.map((value) => _CardType2(label: value['label'],elevation: value['elevation'],color: colors,)),
                 ...cards.map((value) => _CardType3(label: value['label'],elevation: value['elevation'],color: colors,)),
                  ...cards.map((value) => _CardType4(label: value['label'],elevation: value['elevation'],)),
                 const SizedBox(height: 50,)
      
          ],
      
      
      ),
    );
    
    
    }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({ 
    required this.label, 
    required this.elevation
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
            children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: (){

                    },
                    icon: const Icon(Icons.more_vert_outlined)
                    )
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(label),
                ),
               
            ]

        ),
      ),
    );
  }
}




class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  final ColorScheme color;

  const _CardType2({ 
    required this.label, 
    required this.elevation,
   required this.color
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:  const BorderRadius.all(Radius.circular(12)) ,//BorderRadius.circular(12),
        side: BorderSide(
          color: color.outline

        )
      ),

      elevation: elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
            children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: (){

                    },                    
                    icon: const Icon(Icons.more_vert_outlined)
                    )
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('$label - card type2'),
                )
            ]

        ),
      ),
    );
  }
}


class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;
   final ColorScheme color;


  const _CardType3({ 
    required this.label, 
    required this.elevation, required this.color
    });

  @override
  Widget build(BuildContext context) {

    return Card(
      color: color.surfaceVariant,
      elevation: elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
            children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: (){

                    },
                    icon: const Icon(Icons.more_vert_outlined)
                    )
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('$label - card filled'),
                ),
               
            ]

        ),
      ),
    );
  }
}


class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;
   


  const _CardType4({ 
    required this.label, 
    required this.elevation
    });

  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child:  Stack(
          children: [
      
            Image.network('https://picsum.photos/id/${elevation.toInt()}/600/250',
              height: 250,
              fit: BoxFit.cover,
            ),
            
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                    color: Colors.white
                  ),
                  child: IconButton(
                    onPressed: (){
                        
                    },
                    icon: const Icon(Icons.more_vert_outlined)
                    ),
                )
              ),
              //Align(
            //    alignment: Alignment.bottomLeft,
               // child: Text('$label - image'),
             // ),
             
          ]
      
      ),
    );
  }
}

