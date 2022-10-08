
import 'package:app_ainmal_know/TelaAnimais/TelaAnimaisAves.dart';
import 'package:app_ainmal_know/TelaAnimais/informacao_app.dart';
import 'package:app_ainmal_know/TelaAnimais/tela_animais_domesticos.dart';
import 'package:app_ainmal_know/TelaAnimais/tela_animal_selvagem.dart';
import 'package:app_ainmal_know/TelaAnimais/tela_todos_animais.dart';
import 'package:flutter/material.dart';

class Telaprincipal extends StatefulWidget {
  Telaprincipal({Key? key}) : super(key: key);

  @override
  State<Telaprincipal> createState() => _TelaprincipalState();
}

class _TelaprincipalState extends State<Telaprincipal> with SingleTickerProviderStateMixin {

  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        ],
        elevation: 15,
        backgroundColor: Colors.black,
        title: Text("Know Animal", style: TextStyle(color: Colors.white),),
        bottom: TabBar(
          labelStyle: TextStyle(fontSize: 8),
          indicatorColor: Colors.white,
          indicatorWeight:8,
          controller: _controller,
          tabs:[
          Tab(
            text: "Todos"),
          Tab(
            text: "Selvagens"),
          Tab(
            text: "Domesticos"),
          Tab(
            text: "Áves"),
        ] ),
      ),
      body: 
          TabBarView(
            controller: _controller,
            children: [
            TelaTodosAnimais(),
            TelaAnimalSelvagens(),
            TelaAnimalDomestico(),
            TelaAnimalAves(),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index){
            Navigator.push(context, MaterialPageRoute(builder:(contet)=> TelaInformacaoApp()));
          },
          fixedColor: Colors.white,
          backgroundColor: Colors.black,
          elevation: 15,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: "Informação",
              icon: Icon(Icons.book)),
           BottomNavigationBarItem(
             label: "",
              icon: Icon(Icons.book,color: Colors.black,))
          ]) 
    );
  }
}