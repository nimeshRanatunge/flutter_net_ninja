import 'package:flutter/material.dart';
class NetworkRequest extends StatefulWidget {
  const NetworkRequest({Key? key}) : super(key: key);

  @override
  _NetworkRequestState createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
// simulate network NetworkRequest
  void getData() async{
    //simulate network request to get user email
    String kkr = await Future.delayed(Duration(seconds: 3), (){
      return 'nimeshcharu@gmail.com';
    });
    await Future.delayed(Duration(seconds: 2),(){
      print('nimesh : 25');
    });
    print('other codes + $kkr');
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Async pro"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Get data', style: TextStyle(fontSize: 22),),
          ],
        ),
      ),
    );
  }
}
