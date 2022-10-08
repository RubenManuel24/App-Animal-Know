import 'package:flutter/material.dart';
class TelaAnimalSelvagens extends StatefulWidget {
  TelaAnimalSelvagens({Key? key}) : super(key: key);

  @override
  State<TelaAnimalSelvagens> createState() => _TelaAnimalSelvagensState();
}

class _TelaAnimalSelvagensState extends State<TelaAnimalSelvagens> {

  List lista1 = [
    
    "assets/selvagens/coruja.webp",
    "assets/selvagens/corvo.jpeg",
    "assets/selvagens/elefante.jpeg",
    "assets/selvagens/lobo.jpeg",
    "assets/selvagens/falcao.jpeg",
    "assets/selvagens/tigre.jpeg",
    "assets/selvagens/Iena.jpg",
    "assets/selvagens/girafa.jpg",
    "assets/selvagens/urso.jpeg",
    "assets/selvagens/camaleao.webp",
    "assets/selvagens/flamingo.jpeg",
    "assets/selvagens/antílopes.jpeg",
    "assets/selvagens/cobra.jpg",
    "assets/selvagens/bufalo.jpeg",
    "assets/selvagens/zebra.jpeg",
    "assets/selvagens/águia.jpeg"
  ];

  List lista2 = [
   
    "Coruja",
    "Corvo",
    "Elefante",
    "Lobo",
    "Falcão",
    "Tigre",
    "Iena",
    "Girafa",
    "Urso",
    "Camaleão",
    "Flamingo",
    "Antílopes",
    "Cobra",
     "Bufalo",
    "Zebra",
    "Águia"
  ];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

       body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: lista1.length,
                itemBuilder:(context, index){
                  
                  return Card(
                    color: Color.fromARGB(255, 245, 233, 199),
                    elevation: 10,
                    child: ListTile(
                      title: Image.asset(lista1[index].toString(),height: 100,),
                      subtitle: Text(lista2[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                      textAlign: TextAlign.center),
                      
                    ),
                  );
                }),
      ),
   ] )

    );
 }
}