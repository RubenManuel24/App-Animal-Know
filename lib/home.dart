

import 'package:app_ainmal_know/TelaAnimais/telaprincipal.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            
            Padding(padding: EdgeInsets.only(top: 150), child:Text("Know Animal",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),),
            Padding(padding: EdgeInsets.only(top: 10), child: Image.asset("assets/imagemdatela/conjuto_de_animas.jpg"),),
            Padding(padding: EdgeInsets.all(60), child: TextButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(contet)=> Telaprincipal()));}, 
              child: Text("ENTRAR", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )), 
              style: TextButton.styleFrom(backgroundColor: Colors.black)),)
          ],
        ),
      )

    );
  }
}