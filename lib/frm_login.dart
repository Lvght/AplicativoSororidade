import "package:flutter/material.dart";

class FrmLgn extends StatefulWidget {
  const FrmLgn({Key? key}) : super(key: key);

  @override
  _FrmLgnState createState() => _FrmLgnState();
}

class _FrmLgnState extends State<FrmLgn> {
  String dirLogo = "assets/images/Logo_EntreElas.jpeg";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [Image.asset(dirLogo)],
      ),
    );
  }
}
