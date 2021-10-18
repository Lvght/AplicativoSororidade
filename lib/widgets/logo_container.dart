import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

// Container que possui o logo do app dentro de um circulo
// com bordas.
Widget logoContainer() => Container(
    height: 184,
    width: 184,
    decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/Logo_EntreElas.jpeg"),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.circular(92),
        border: Border.all(
            color: const Color(0xFF2AADE3),
            style: BorderStyle.solid,
            width: 3)));
