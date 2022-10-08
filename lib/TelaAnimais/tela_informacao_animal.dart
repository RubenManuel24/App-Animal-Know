import 'package:flutter/material.dart';
class InformacaoAnimal extends StatefulWidget {
  InformacaoAnimal({Key? key}) : super(key: key);

  @override
  State<InformacaoAnimal> createState() => _InformacaoAnimalState();
}

class _InformacaoAnimalState extends State<InformacaoAnimal> {
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
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 15, bottom:10),
            child:  Image.asset("assets/imagemdatela/raposa.jpeg",width:200,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.volume_up),iconSize: 40 ),
                IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_outline_sharp),iconSize: 40 )
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), 
                   child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer egetm ut ac nisl." +
                               "Integer sit amet risus ante. Curabitur ac molestie nisl, at mollis enim." +
                               " Mauris blandit, nisl quis imperdiet imperdiet, justo magna vulputate urna, h risus in sem. " +
                               "Vivamus a pulvinar ex. Sed ultricies dui a ipsum dignissim, quis facilisis nisl mollis." +
                               "ridiculus mus. Fusce sed egestas enim. Maecenas rutrum, felis vitae pretium tincidunt, " +
                               "Nulla vulputate lacus vehicula enim vestibulum, eu efficitur ligula hendrerit. Aliquam condimentum dui quam, nec porta neque " +
                               "laoreet sed. Nunc auctor est massa, non mattis felis molestie id. Mauris sollicitudin scelerisque ex,. " +
                               "Duis ipsum urna, tempus nec porttitor sit amet, accumsan quis erat. Aliquam ullamcorper iaculis vestibulum. " +
                               "Ut auctor in nisl venenatis vulputate. Curabitur lobortis mauris sed turpis interdum congue. Suspendisse ac faucibus. " + 
                               "Integer mattis feugiat facilisis. Mauris metus velit, porttitor ac nisl vitae, venenatis sollicitudin risus. " + 
                               "Vivamus efficitur nibh nec finibus pharetra. Vestibulum faucibus ex non tincidunt cursus. Mauris mattis, tellus metus ",
                               style: TextStyle(fontWeight: FontWeight.bold),),)
          ],
        ),
        ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.white,
          backgroundColor: Colors.black,
          elevation: 15,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home)),
           BottomNavigationBarItem(
              label: "Informação",
              icon: Icon(Icons.book,color: Colors.white,))

          ]) 
    );
  }
}