import 'package:flutter/material.dart';

//Виджет Container и BoxDecoration

void main()=> runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget{
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: (const Text('Test Flutter App')
          ),
        ),
        body: const SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: double.infinity,
        alignment: Alignment.center,
        // padding: const EdgeInsets.only(left: 40, top: 20, right: 40, bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        margin: EdgeInsets.all(50),
        transform: Matrix4.rotationZ(0.1),
        child: const Text('Panda'),
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.red, Colors.cyan])),

      ),
    );
  }
}
