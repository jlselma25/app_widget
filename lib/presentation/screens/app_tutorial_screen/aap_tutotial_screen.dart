import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final List<SlideInfo> lst = [
  SlideInfo('Busca la comida','caption','assets/Images/1.png'),
  SlideInfo('Entrega rapida','caption','assets/Images/2.png'),
  SlideInfo('Disfruta la comida','caption','assets/Images/3.png')


  
];

class SlideInfo {
final String title;
final String caption;
final String imageUrl;

  SlideInfo(
     this.title, 
     this.caption, 
     this.imageUrl);

}


class ApptutorialScreen extends StatefulWidget {

    static const String name = 'tutorial_screen';
  const ApptutorialScreen({super.key});

  @override
  State<ApptutorialScreen> createState() => _ApptutorialScreenState();
}

class _ApptutorialScreenState extends State<ApptutorialScreen> {

   final  PageController pageViewController = PageController();
    bool endPage= false; 
  

  @override
  void initState() {    
    super.initState();

    pageViewController.addListener(() { 

        final page = pageViewController.page ??  0;

        if (!endPage && page >= (lst.length - 1.5)){
          setState(() {
          endPage = true;
        });
        }
    });  
   
  }


  @override
  void dispose() { 
    super.dispose();
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: Stack(
      children: [
       
        PageView(
          controller:pageViewController ,
          physics: const BouncingScrollPhysics(),
          children:  lst.map(
            (slideData) => _Slide(
              title: slideData.title, 
              caption: slideData.caption, 
              imageUrl: slideData.imageUrl
              )
              ).toList()
             
              ),


              Positioned(
                right: 20,
                top: 50,
                child: TextButton(
                  onPressed: () => context.pop(), 
                  child: const Text('Salir')
                  )
                  
                  ),

                  endPage ?   // esto es una condicion que acaba ala final etiqueta fillebutton con un sizebox
                  Positioned(
                    bottom: 30,
                    right: 30,
                    child: FadeInRight(
                      from: 15,
                      delay: const Duration(seconds: 1),
                      child: FilledButton(
                        child: const Text('Empexar'),
                        onPressed: ()=> context.pop(),
                      ),
                    )
                    ):const SizedBox()

                  
      ],
    )
     

);

    
  }
}

class _Slide extends StatelessWidget {
final String title;
final String caption;
final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge;
    final textStyleCaption =  Theme.of(context).textTheme.bodySmall;


    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image:AssetImage(imageUrl)),
            const SizedBox(height: 20,),
            Text(title,style: textStyle,),
            const SizedBox(height: 10,),
            Text(caption,style: textStyleCaption,),

          ],
        ),
      ),
    );
  }
}