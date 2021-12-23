import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Counter App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;

  void nemeh() {
    setState(() {
      a++;
    });
  }
  void hasah() {
    if (a < 1) {
      return;
    }
    setState(() {
      a--;
    });
  }
  void _resetCounter() {
    setState(() {
      a = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "$a",
                  style: GoogleFonts.lobster(fontSize: 200),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 100,
                      color: Colors.blue,
                      icon: Icon(Icons.add_circle),
                      onPressed: nemeh,
                    ),
                    IconButton(
                      iconSize: 100,
                      color: Colors.blue,
                      icon: Icon(Icons.remove_circle_outline),
                      onPressed: hasah,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: _resetCounter,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(const Size(120, 50)),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              child: const Text(
                'Reset',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
