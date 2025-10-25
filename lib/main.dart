import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  String currentCookie = "";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentCookie = "";
  List<String> cookies = [
    "Choco", //
    "Vanillia", //
    "Cream", //
    "Milk", //
  ];

  void randomCookie() {
    var random = Random();
    int cookieNum = random.nextInt(cookies.length);
    setState(() {
      currentCookie = cookies[cookieNum];
    });
    print(currentCookie);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        // title: Text("Flutter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/happy_cookie.jpg",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  currentCookie,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: randomCookie,
              child: Text("Get a cookie"),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: randomCookie,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
