 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homeScreen(),
  ));
  SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle( statusBarColor: Colors.transparent, 
     systemNavigationBarColor: Colors.white
     ), 
     );
}

class homeScreen extends StatelessWidget {
  const homeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Show Image",style: TextStyle(
          color: Colors.black
        ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100,horizontal: 100),
        child: Column(
          children: [
            Image.asset('assets/images/bird.png'),
            Image.asset("assets/images/2593633.png")
          ],
        ),
      ),
    );
  }
}