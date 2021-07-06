import 'package:flutter/material.dart';
class NetworkRequest extends StatefulWidget {
  const NetworkRequest({Key? key}) : super(key: key);

  @override
  _NetworkRequestState createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
// simulate network NetworkRequest
//when returning something by async function, we must you return type as Future<String> (with future class)
  Future<String> getData() async{
    //simulate network request to get user email
    String email = await Future.delayed(Duration(seconds: 3), (){
      return 'nimeshcharu@gmail.com';
    });
    //future state has 2 states, 1. uncompleted 2. completed
    return email; //async return
  }
  Future<void> getNetworkRequest()async{ //uncompleted function returns if this is not async
    print(await getData());
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNetworkRequest();
    print('other codes');
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
