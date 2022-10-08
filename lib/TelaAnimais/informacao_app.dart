

import 'package:app_ainmal_know/TelaAnimais/telaprincipal.dart';
import 'package:flutter/material.dart';
class TelaInformacaoApp extends StatefulWidget {
  TelaInformacaoApp({Key? key}) : super(key: key);

  @override
  State<TelaInformacaoApp> createState() => _nameState();
}

class _nameState extends State<TelaInformacaoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.black,
        title: Text("Know Animal", style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
       child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 10), child: Text("Know Animal", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),),
            Padding(padding: EdgeInsets.all(5), 
                   child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(10), child: Text("Aplicativo Know Animal é um aplicativo que nos ensina um pouco sobre diversos animais existente na terra. Tecnologia usada: Flutter; Tempo de criação: 2 dias",
                               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                               ),
                    ],
                   )),

            Padding(padding: EdgeInsets.only(top: 10, bottom: 8), child: Text("Programador", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),),
            Image.asset("assets/imagemdatela/ruben.png", width: 100,),
            Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                   child: Text("Ruben Adilson Sapalo Manuel, programador mobile júnior, estudante do terceiro ano em Engenharia Informática na Universidade Indepentente de Angola.",
                               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),)
          ],
        ),
        ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          Navigator.push(context, MaterialPageRoute(builder:(contet)=> Telaprincipal()));
        },
          fixedColor: Colors.white,
          backgroundColor: Colors.black,
          elevation: 15,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home)),
           BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.book,color: Colors.black,))

          ]) 
    );
  }
}