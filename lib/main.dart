import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyRandomFriend(),
    );
  }
}

class MyRandomFriend extends StatefulWidget {
  @override
  _MyRandomFriendState createState() => _MyRandomFriendState();
}

class _MyRandomFriendState extends State<MyRandomFriend> {
  List myInt = [128, 255, 255];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          makeAList();
        },
        child: Stack(
          children: [
            (myInt.length < 2)
                ? CircularProgressIndicator()
                : Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Color.fromRGBO(myInt[0], myInt[1], myInt[2], 100),
                  ),
            Center(
                child: Text(
              'Hey there',
              style: TextStyle(fontSize: 28),
            ))
          ],
        ),
      ),
    );
  }

  Future makeAList() async {
    Random random = new Random();
    for (var i = 0; i < 3; i++) {
      setState(() {
        myInt[i] = random.nextInt(255);
      });
    }
  }
}
