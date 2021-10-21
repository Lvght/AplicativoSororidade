import 'package:aplicativo_sororidade/components/telaprincipal_card.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sugestões'),),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          TelaprincipalCard(texto: "maternidade", imagem: 'assets/images/maternidade.png'),
          TelaprincipalCard(texto: "machismo", imagem: 'assets/images/machismo.png'),
          TelaprincipalCard(texto: "mercado de trabalho", imagem: 'assets/images/mercadodetrabalho.png'),
          TelaprincipalCard(texto: "saúde", imagem: 'assets/images/saude.png'),
          TelaprincipalCard(texto: "sexo", imagem: 'assets/images/sexo.png'),

        ],
      ),
      
    );
  }
}
