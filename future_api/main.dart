import 'package:flutter/material.dart';
import 'network_request.dart';
// FUTURE API
void main()=>runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'future_api',
      home: MyApp(),
      routes: <String, WidgetBuilder>{
        '/newpage' :(context)=>NetworkRequest(),
      },
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FUTURE API'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Network Request',style: TextStyle(fontSize: 22),),
            RaisedButton(onPressed: (){
              Navigator.of(context).pushNamed('/newpage');
            }, child: Text('Send network request'),color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}

