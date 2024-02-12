import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Response ability',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            children: <Widget>[
              CustomExpended(color: Colors.red, flex: 4),
              CustomExpended(color: Colors.blue, flex: 1),
              CustomExpended(color: Colors.brown, flex: 1),
              CustomExpended(color: Colors.green, flex: 4),
            ],
          )),
          Expanded(
              child: Column(
            children: <Widget>[
              CustomExpended(color: Colors.white, flex: 4),
              CustomExpended(
                  color: Color.fromARGB(255, 143, 190, 228), flex: 1),
              CustomExpended(color: Color.fromARGB(255, 33, 30, 255), flex: 1),
              CustomExpended(color: Color.fromARGB(255, 130, 34, 209), flex: 4),
            ],
          ))
        ],
      ),
    );
  }
}

class CustomExpended extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final int flex;
  const CustomExpended(
      {super.key,
      required this.color,
      required this.flex,
      this.text = 'default text',
      this.textColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Container(
          decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.black, width: 8.0)),
          width: double.infinity,
          child: Center(
            child: Text(
              '$text',
              style: TextStyle(
                color: textColor,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
