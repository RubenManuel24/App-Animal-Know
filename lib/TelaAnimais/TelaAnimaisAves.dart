import 'package:flutter/material.dart';
class TelaAnimalAves extends StatefulWidget {
  TelaAnimalAves({Key? key}) : super(key: key);

  @override
  State<TelaAnimalAves> createState() => _TelaAnimalAvesState();
}

class _TelaAnimalAvesState extends State<TelaAnimalAves> {

 List lista1 = [
  "assets/aves/arara.webp",
  "assets/aves/águia.jpeg",
  "assets/aves/pombo.jpeg",
  "assets/aves/beija_flor.webp",
  "assets/aves/coruja.webp",
  "assets/aves/pinguins.jpeg",
  "assets/aves/peru.jpeg",
  "assets/aves/galo.jpeg",
  "assets/aves/pavão-azul.jpeg",
  "assets/aves/ganso.jpeg",
  "assets/aves/galinha.jpeg",
  "assets/aves/flamingo.jpeg",
  "assets/aves/falcao.jpeg",
  "assets/aves/corvo.jpeg",
  "assets/aves/cockateil.jpeg",
  ];

  List lista2 = [
    "Arara",
    "Águia",
    "Pombo",
    "Beija Flor",
    "Coruja",
    "Pinguins",
    "Peru",
    "Galo",
    "Pavão azul",
    "Ganso",
    "Galinha",
    "Flamingo",
    "Falcão",
    "Corvo",
    "Cockateil"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                     subtitle: Text(lista2[index], 
                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                     textAlign: TextAlign.center),
                      
                    ),
                  );
                }),
      ),
   ] )

    );
  }
}
