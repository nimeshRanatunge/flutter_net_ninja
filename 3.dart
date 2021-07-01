import 'package:flutter/material.dart';
main()=>runApp(myApp());
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myapp',
      home: Myhome(),
    );
  }
}
class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my fisrt app'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:
        Padding( // if you want to add color, margin etc for container, ypu can use conatiner
          padding: EdgeInsets.all(20),
          child: Text('hello padding'),
        ),
      // Container(
      //   color: Colors.grey,
      //   child: Text('hello'),
      //   padding: EdgeInsets.all(20),
      //   margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
      // ),
    );
  }
}

