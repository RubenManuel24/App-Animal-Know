import 'package:flutter/material.dart';
class TelaTodosAnimais extends StatefulWidget {
  TelaTodosAnimais({Key? key}) : super(key: key);

  @override
  State<TelaTodosAnimais> createState() => _TelaTodosAnimaisState();
}

class _TelaTodosAnimaisState extends State<TelaTodosAnimais> {

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
      "assets/domesticos/porcod.jpeg",
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
    "assets/selvagens/águia.jpeg",
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
    "Porco da Índia",
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
    "Águia",
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
                  print(lista1.length.toString());
                  return Card(
                    color: Color.fromARGB(255, 245, 233, 199),
                    elevation: 10,
                    child: ListTile(
                      title: Image.asset(lista1[index].toString(),height: 100,),
                      subtitle: Text(lista2[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                      textAlign: TextAlign.center,),
                      
                    ),
                  );
                }),
      ),
   ] )

    );
  }
}