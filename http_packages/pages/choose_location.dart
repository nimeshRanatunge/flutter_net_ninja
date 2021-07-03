import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


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

