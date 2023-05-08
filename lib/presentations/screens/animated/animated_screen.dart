import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width = 150;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 5;

  void changeShape(){
    final random = Random();
    height = random.nextInt(300)+10;
    width = random.nextInt(300)+50;
    borderRadius = random.nextInt(100)+10;

    color = Color.fromRGBO(random.nextInt(255),random.nextInt(255),random.nextInt(255),1);
    setState(() {
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceInOut,
          width: width <=0 ? 0 : width,
          height: height <=0 ? 0: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius <= 0 ? 0:borderRadius)
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => changeShape(), 
        child: const Icon(Icons.play_arrow_rounded),),
    );
  }
}