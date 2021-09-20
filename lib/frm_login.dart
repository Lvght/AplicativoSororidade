import "package:flutter/material.dart";

class FrmLgn extends StatefulWidget {
  const FrmLgn({Key? key}) : super(key: key);

  @override
  _FrmLgnState createState() => _FrmLgnState();
}

class _FrmLgnState extends State<FrmLgn> {
  String dirLogo = "assets/images/Logo_EntreElas.jpeg";
  TextEditingController nomeController = TextEditingController();

  Widget creatorTextFild(){
    return Expanded(
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Insira seu nome',
      ),
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Image.asset(dirLogo), 
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(92))
            //TextFiel()
          ),
          
        
          //creatorTextFild(),

          /*TextField(
            //decoration: const InputDecoration(
              //hintText: 'Insira seu nome',
            //),
          )*/
        ],
      ),
    );
  }
/*
Container(
        color: Colors.white,
        child: TextField(
            decoration: const InputDecoration(
          hintText: "Insira seu nome",
*/
  
}
