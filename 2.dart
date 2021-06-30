import 'package:flutter/material.dart';
main()=>runApp(myapp());
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ninja2',
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
        title: Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.alternate_email,),
          color: Colors.amber,
        ),
        // ignore: deprecated_member_use
        //child:RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.mail), label: Text('Mail me'), color: Colors.amber,),

        // FlatButton(
        //   onPressed: () {
        //     print('u clicked me');
        //   },
        //   child: Text('Button1'),
        //   color: Colors.lightBlue,
        // ),

        //Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.red,
        //   size: 120,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('Click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}

