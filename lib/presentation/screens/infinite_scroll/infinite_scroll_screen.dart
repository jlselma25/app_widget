import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class InfiniteScrollScreen extends StatefulWidget {

    static const String name = 'scroll_screen';
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  List<int> imgageIds = [1,2,3,4,5];
  final ScrollController scrollControler = ScrollController();
  bool isLoading = false;
  bool isMounted = true;



@override
  void initState() {    
    super.initState();
    scrollControler.addListener(() { 

        if((scrollControler.position.pixels + 500 >= scrollControler.position.maxScrollExtent))
        {
           loadNextPage();
        }

    });
  }

@override
  void dispose() {    
    super.dispose();
    scrollControler.dispose();
    isMounted = false;
  }
Future loadNextPage() async {
    if(isLoading) return;

    isLoading = true;
    setState(() {
    });

    await Future.delayed(const Duration(seconds: 2));
    
    addNewImage();
    isLoading = false;
    if(!isMounted ) return;
     setState(() {
      
    });
    moveScrollToBottom();

}

void moveScrollToBottom(){
  if(scrollControler.position.pixels + 150 <= scrollControler.position.maxScrollExtent) return;

  scrollControler.animateTo(
    
  scrollControler.position.pixels + 120, 
    duration: const Duration(milliseconds: 300), 
    curve: Curves.fastOutSlowIn);
}

Future<void> onRefresh() async{
  isLoading = true;
  setState(() {
    
  });
  await Future.delayed(const Duration(seconds: 3));
  if(!isMounted) return;
  
  final lastId = imgageIds.last;
  imgageIds.clear();
  imgageIds.add(lastId + 1);
  addNewImage();
  setState(() {
    
  });
isLoading = false;
}

void addNewImage(){

  final lastId = imgageIds.last;

 // imgageIds.add (lastId + 1);
 // imgageIds.add (lastId + 2);
 // imgageIds.add (lastId + 3);
 // imgageIds.add (lastId + 4);
 // imgageIds.add (lastId + 5);

  // otra fomra de hacer lo de arriba

  imgageIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)

  );

  setState(() {
    
  });

}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,

          child: RefreshIndicator(
            edgeOffset: 10,
            strokeWidth: 2,
            onRefresh: onRefresh,
            child: ListView.builder(
              controller: scrollControler,
              itemCount: imgageIds.length,
              itemBuilder: (context,index){
                return  FadeInImage(
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 300,
                  placeholder: const AssetImage('assets/Images/jar-loading.gif'), 
                  image: NetworkImage('https://picsum.photos/id/${imgageIds[index]}/200/300'));
              }
                 
              
              
              ),
          ),
        ),
          floatingActionButton: FloatingActionButton(             

           // child: const Icon(Icons.arrow_back_ios_new_outlined),
          
            child:  isLoading 
                          ?SpinPerfect(
                              infinite: true,
                              child: const Icon(Icons.refresh_rounded)
                            ) 
                          : FadeIn(child: const Icon(Icons.arrow_back_ios_new_outlined)),
            onPressed: () {
              context.pop();
            },
            
            ),

);
              
    
  }
}