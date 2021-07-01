import 'package:flutter/material.dart';
main()=>runApp(myapp());
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'expanded widgets',
      home: myhomie(),
    );
  }
}
class myhomie extends StatelessWidget {
  const myhomie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rows'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:
      Row(
        children: [
          Expanded(child: Image.asset('assets/qwe.jpg'), flex: 3,),
          Expanded(
            flex: 3, // 3/6
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2, /// 2/6
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('1'),
              ),
          ),
        ],
      ),
    );
  }
}
