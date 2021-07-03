import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    print('')
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
    return Scaffold(
      body: Text('Loading sxreen'),
    );
  }
}

