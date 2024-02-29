// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// void main() {
//   runApp(const TestFlutterApp());
// }
//
// class TestFlutterApp extends StatelessWidget {
//   const TestFlutterApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.lightBlue,
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
//         useMaterial3: true,
//         textTheme: const TextTheme(
//           bodyMedium: TextStyle(
//             color: Colors.deepPurple,
//             fontWeight: FontWeight.w500,
//             fontSize: 20
//           ),
//           labelSmall: TextStyle(
//             color: Colors.lightBlue,
//             fontWeight: FontWeight.w700,
//             fontSize: 14
//           )
//         ),
//       ),
//       home: const MyHomePage(title: 'Test Flutter Application'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemCount: 10,
//           itemBuilder: (context, i) => const ListTile(
//             // leading: SvgPicture.asset('assets/svg/bitcoin.svg'),
//             title: Text('BitCoin',
//               // style: Theme.of(context).textTheme.bodyMedium,
//             ),
//             subtitle: Text('data'),
//           )
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'package:flutter/material.dart';

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
        color: Colors.lightBlue,
        height: 300,
        width: double.infinity,
        alignment: Alignment.center,
        // padding: const EdgeInsets.only(left: 40, top: 20, right: 40, bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        margin: EdgeInsets.all(50),
        child: const Text('Panda'),
      ),
    );
  }
}
