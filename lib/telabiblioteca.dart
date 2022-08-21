import 'package:flutter/material.dart';
import 'package:sibi/pauloafonso.dart';
import 'package:sibi/salgueiro.dart';
import 'package:sibi/serradacapivara.dart';
import 'package:sibi/teladecienciasagrarias.dart';
import 'package:sibi/telaespacoplural.dart';
import 'package:sibi/telajuazeiro.dart';
import 'package:sibi/telapetrolina.dart';
import 'package:sibi/telasenhordobonfim.dart';

class telabiblioteca extends StatefulWidget {
  const telabiblioteca({Key? key}) : super(key: key);

  @override
  State<telabiblioteca> createState() => _telabibliotecaState();
}

class _telabibliotecaState extends State<telabiblioteca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => telapetrolina()));
              },
              child: Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    ' Petrolina',
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              }), // Muda as Bordas
                  fixedSize: MaterialStateProperty.resolveWith<Size?>((states) {
                return Size(400, 60);
              }), //tamanho
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.grey;
                }
              }) //cor de fundo
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => telajuzeiro()));
              },
              child: Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    ' Juazeiro',
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              }), // Muda as Bordas
                  fixedSize: MaterialStateProperty.resolveWith<Size?>((states) {
                return Size(400, 60);
              }), //tamanho
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.grey;
                }
              }) //cor de fundo
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => telaespacoplural()));
              },
              child: Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    ' Biblioteca Espaço Plural',
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              }), // Muda as Bordas
                  fixedSize: MaterialStateProperty.resolveWith<Size?>((states) {
                return Size(400, 60);
              }), //tamanho
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.grey;
                }
              }) //cor de fundo
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => telasenhordobonfim()));
              },
              child: Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    ' Senhor do Bonfim',
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              }), // Muda as Bordas
                  fixedSize: MaterialStateProperty.resolveWith<Size?>((states) {
                return Size(400, 60);
              }), //tamanho
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.grey;
                }
              }) //cor de fundo
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => pauloafonso()));
              },
              child: Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    ' Paulo Afonso',
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              }), // Muda as Bordas
                  fixedSize: MaterialStateProperty.resolveWith<Size?>((states) {
                return Size(400, 60);
              }), //tamanho
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.grey;
                }
              }) //cor de fundo
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => salgueiro()));},
              child: Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    ' Salgueiro',
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              }), // Muda as Bordas
                  fixedSize: MaterialStateProperty.resolveWith<Size?>((states) {
                return Size(400, 60);
              }), //tamanho
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.grey;
                }
              }) //cor de fundo
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => serradacapivara()));
              },
              child: Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    ' Serra da Capivara',
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              }), // Muda as Bordas
                  fixedSize: MaterialStateProperty.resolveWith<Size?>((states) {
                return Size(400, 60);
              }), //tamanho
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.grey;
                }
              }) //cor de fundo
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => teladecienciasagrarias()));
              },
              child: Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    ' Ciências Agrárias',
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                );
              }), // Muda as Bordas
                  fixedSize: MaterialStateProperty.resolveWith<Size?>((states) {
                return Size(400, 60);
              }), //tamanho
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.grey;
                }
              }) //cor de fundo
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
