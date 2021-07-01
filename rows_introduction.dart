import 'package:flutter/material.dart';
main()=>runApp(myapp());
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'rows',
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
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.amber,
              child: Text('1st one'),
              padding: EdgeInsets.all(30),
            ),
            Container(
              color: Colors.red,
              child: Text('2ns one'),
              padding: EdgeInsets.all(30),
            ),
            Container(
              color: Colors.deepPurple,
              child: Text('1st one'),
              padding: EdgeInsets.all(30),
            ),
          ],
        ),
      
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('hello world'),
      //     FlatButton(
      //       onPressed: (){},
      //       color: Colors.amber,
      //       child: Text('mybutton'),
      //     ),
      //     Container(
      //       color: Colors.red,
      //       padding: EdgeInsets.all(30),
      //       child: Text('container'),
      //     ),
      //   ],
      // ),
    );
  }
}
