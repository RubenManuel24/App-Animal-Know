import 'package:flutter/material.dart';
class TelaAnimalDomestico extends StatefulWidget {
  TelaAnimalDomestico({Key? key}) : super(key: key);

  @override
  State<TelaAnimalDomestico> createState() => _TelaAnimalDomesticoState();
}

class _TelaAnimalDomesticoState extends State<TelaAnimalDomestico> {

 List lista1 = [
      "assets/domesticos/boi.jpg",
      "assets/domesticos/arara.webp",
      "assets/domesticos/burro.jpg",
      "assets/domesticos/galo.jpeg",
      "assets/domesticos/cabrito.jpeg",
      "assets/domesticos/cao2.jpeg",
      "assets/domesticos/ovelhas.jpg",
      "assets/domesticos/porco.jpeg",
      "assets/domesticos/cavalo.jpg",
      "assets/domesticos/galinha.jpeg",
      "assets/domesticos/gato.jpeg",
      "assets/domesticos/pombo.jpeg",
      "assets/domesticos/vaca.jpg",
      "assets/domesticos/porcod.jpeg"
  ];


  List lista2 = [
    "Boi",
    "Arara",
    "Burro",
    "Galo",
    "Cabrito",
    "Cão",
    "Ovelha",
    "Porco",
    "Cavalo",
    "Galinha",
    "Gato",
    "Pombo",
    "Vaca",
    "Porco da Índia"
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
                      title: Image.asset(lista1[index].toString(), height: 100, ),
                      subtitle: Text(lista2[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                      textAlign: TextAlign.center,),
                    ),
                  );
                }),
      ),
   ] )

    );
  }
}
