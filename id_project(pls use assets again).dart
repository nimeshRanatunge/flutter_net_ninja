import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pic1.JPEG'),
                  radius: 40.0,
                ),
              ),
            Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            Text('NAME', style: TextStyle(color: Colors.grey, letterSpacing: 2.0),),
            SizedBox(height: 10.0,),
            Text('Nimesh', style: TextStyle(color: Colors.amberAccent, letterSpacing: 2.0, fontSize:28.0,fontWeight: FontWeight.bold ),),
            SizedBox(height: 30.0,),

            Text('CURRENT', style: TextStyle(color: Colors.grey, letterSpacing: 2.0),),
            SizedBox(height: 10.0,),
            Text('8', style: TextStyle(color: Colors.amberAccent, letterSpacing: 2.0, fontSize:28.0,fontWeight: FontWeight.bold ),),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'nimesh@gmail.com',
                  style: TextStyle(color: Colors.grey[400], fontSize: 18.0, letterSpacing: 1.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
