import 'package:flutter/material.dart';
import 'package:sibi/redesociais.dart';
import 'package:sibi/telacatolgrafica.dart';
import 'package:sibi/teladocumentos.dart';
import 'package:sibi/telaguiausuario.dart';
import 'package:sibi/telanadaconsta.dart';
import 'package:sibi/telanormalizacao.dart';
import 'package:sibi/telapegamun.dart';
import 'package:sibi/telareservalivro.dart';
import 'package:sibi/telatutoriais.dart';

class menulateral extends StatefulWidget {
  const menulateral({Key? key}) : super(key: key);

  @override
  State<menulateral> createState() => _menulateralState();
}

class _menulateralState extends State<menulateral> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(''),
            accountEmail: Text(''),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('imagem/logosibiunivasf.jpg'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
