import 'package:flutter/material.dart';


class ProgressScreen extends StatelessWidget {

    static const String name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Progress indicators'),
      ),
      body:const  _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular progress indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2,backgroundColor: Colors.black45,),
          SizedBox(height: 20,),
          Text('Circular indicator controlado'),
          SizedBox(height: 10,),
          _ControllerIndicatorProgress(),
        ],
      ),
    );
  }
}

class _ControllerIndicatorProgress extends StatelessWidget {
  const _ControllerIndicatorProgress();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}