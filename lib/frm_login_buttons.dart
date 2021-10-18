import 'package:aplicativo_sororidade/widgets/logo_container.dart';
import "package:flutter/material.dart";

class PageLoginButtons extends StatefulWidget {
  const PageLoginButtons({Key? key}) : super(key: key);

  @override
  _PageLoginButtonsState createState() => _PageLoginButtonsState();
}

class _PageLoginButtonsState extends State<PageLoginButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [logoContainer()],
      ),
    );
  }
}
