import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sibi/menulateral.dart';
import 'package:sibi/telabiblioteca.dart';
import 'package:sibi/teladelinks.dart';
import 'package:sibi/telainicial.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 int _opcaoselecionada=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: Colors.white,

        endDrawer: menulateral(), // Menu Hambuguer
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: IndexedStack(
          index: _opcaoselecionada,
          children: <Widget>[
            teladelinks(),
            telainicial(),
            telabiblioteca(),

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(  selectedFontSize: 0, iconSize: 35, backgroundColor: Colors.blue[400],
            currentIndex: _opcaoselecionada,
            onTap: (opcao){
            setState(() {
            _opcaoselecionada=opcao;
          });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(
                      color: Colors.white,
                      Icons.check_box_outlined),
                  label: ''),

               BottomNavigationBarItem(icon: Icon(
                       color: Colors.white,
                       Icons.home_outlined),
                   label: ''),

          BottomNavigationBarItem(
               icon: Icon(
                  color: Colors.white,
                  Icons.location_on_outlined),
                 label: ''),
        ]),







      );

  }
}
