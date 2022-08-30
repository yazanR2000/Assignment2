import 'dart:math';

import 'package:flutter/material.dart';
import 'package:assignment/dummy_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Birthday(),
      ),
    );
  }
}

class Birthday extends StatefulWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  Color _color = Colors.red;
  int _index = 0;
  final Map _yazanInformation = Dummy_Data().YazanInfo;

  final List<String> _qoutes = Dummy_Data().Qoutes;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assgnmet 2"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              print(_yazanInformation);
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              title: const Text("Home"),
              leading: const Icon(Icons.home),
            ),
            ListTile(
              onTap: () {},
              title: const Text("My repositories"),
              leading: const Icon(Icons.category),
            ),
            ListTile(
              onTap: () {},
              title: const Text("LTUC profile"),
              leading: const Icon(Icons.person_rounded),
            ),
          ],
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(20),
            color: _color,
          ),
          //Swidth: 200,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.linear,
          child: Card(
            elevation: 20,
            shadowColor: Colors.red.shade200,
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: AnimatedContainer(
              duration: const Duration(microseconds: 800),
              curve: Curves.easeIn,
              padding: const EdgeInsets.all(50),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: _color,
              ),
              //margin: const EdgeInsets.all(15),
              child: Text(
                _qoutes[_index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );
            _index = random.nextInt(11);
          });
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
