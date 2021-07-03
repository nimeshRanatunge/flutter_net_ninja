import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData(){
    Future.delayed(Duration(seconds: 3),(){
      print('yoshi');
    });
    print('statement');
  }
  int counter = 0;
  //when the state object is first created, init method will run
  //after it , when changing state, only 'statex' will print
  @override
  void initState() {
    super.initState();
    print('init state');
    getData();
  }
  @override
  Widget build(BuildContext context) {
    print('statex');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text('çhoose location screen'),
        elevation: 0,
      ),
        body:
        RaisedButton(
          onPressed: (){
            setState(() {
              counter++;
            });
          },
          child: Text('Counter is $counter'),
        ),
    );
  }
}

