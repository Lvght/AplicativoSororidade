import "package:flutter/material.dart";

class FrmLgn extends StatefulWidget {
  const FrmLgn({Key? key}) : super(key: key);

  @override
  _FrmLgnState createState() => _FrmLgnState();
}

class _FrmLgnState extends State<FrmLgn> {
  String dirLogo = "assets/images/Logo_EntreElas.jpeg";
  List<String> users = ["Leila0102", "Joana00"];
  bool? _chkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    final double _scrW = MediaQuery.of(context).size.width;
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: Column(
            children: [
              Container(
                  height: 184,
                  width: 184,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dirLogo),
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(92),
                      border: Border.all(
                          color: const Color(0xFF2AADE3),
                          style: BorderStyle.solid,
                          width: 3))),
              // Form de usuária com validação de usuária.
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Material(
                      color: Colors.transparent,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (user) {
                          if (user != null && users.contains(user)) {
                            return ("Este nome de usuária já está em uso. Digite um novo.");
                          }
                          return null;
                        },
                        style: const TextStyle(
                            fontFamily: "Montserrat", fontSize: 15),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: "Digite seu nome de usuária"),
                      ))),
              // Form de senha.
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Material(
                      color: Colors.transparent,
                      child: TextField(
                        style: const TextStyle(
                            fontFamily: "Montserrat", fontSize: 15),
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Senha"),
                      ))),
              //Genero de identificação.
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Material(
                      color: Colors.transparent,
                      child: TextField(
                        style: const TextStyle(
                            fontFamily: "Montserrat", fontSize: 15),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Gênero"),
                      ))),
              //Identificação.
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Material(
                      color: Colors.transparent,
                      child: TextField(
                        style: const TextStyle(
                            fontFamily: "Montserrat", fontSize: 15),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Como deseja ser identificada?"),
                      ))),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Material(
                      color: Colors.transparent,
                      child: Row(children: [
                        Transform.scale(
                            scale: 1.5,
                            child: Checkbox(
                                value: _chkBoxValue,
                                onChanged: (value) {
                                  setState(() {
                                    _chkBoxValue = value;
                                  });
                                })),
                        const Text(
                          "Eu concordo com os dados acima registrados.\nE autorizo o uso para o processo de\nverificação de contas.",
                          style:
                              TextStyle(fontFamily: "Montserrat", fontSize: 16),
                        )
                      ]))),

              // Botão de registrar.
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Registrar",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Montserrat",
                          fontSize: 15),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF83DBEE)),
                        fixedSize: MaterialStateProperty.all<Size?>(
                            Size.fromWidth(_scrW * 0.7))),
                  ))
            ],
          ),
        ));
  }
}
