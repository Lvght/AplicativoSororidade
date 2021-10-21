import 'package:flutter/material.dart';
class TelaprincipalCard extends StatelessWidget {
  const TelaprincipalCard({ Key? key, required this.texto, required this.imagem}) : super(key: key);
  final String texto;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(imagem),
          Text(texto),
        ],
      ),
    );
  }
}