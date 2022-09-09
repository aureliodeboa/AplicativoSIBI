import 'package:flutter/material.dart';
import 'package:sibi/bibliotecas/pauloafonso.dart';
import 'package:sibi/bibliotecas/salgueiro.dart';
import 'package:sibi/bibliotecas/serradacapivara.dart';
import 'package:sibi/bibliotecas/teladecienciasagrarias.dart';
import 'package:sibi/bibliotecas/telaespacoplural.dart';
import 'package:sibi/bibliotecas/telajuazeiro.dart';
import 'package:sibi/bibliotecas/telapetrolina.dart';
import 'package:sibi/bibliotecas/telasenhordobonfim.dart';

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
        padding:EdgeInsets.fromLTRB(10, 25, 10, 20),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
                'UNIDADES',
                textAlign: TextAlign.center,
                style: 
                  TextStyle(
                    // color: Colors.amber,
                    color: Color.fromARGB(255, 253, 152, 2),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  )
            ),
            
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => telapetrolina()));
              },
              
              child: Row(
                children: [    
                  Icon(
                    Icons.account_balance,
                    size: 30.0,
                  ),
                  
                  Text(
                    ' Petrolina', 
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: 
                    MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      );
                    }), // Muda as Bordas
                  
                  fixedSize: 
                    MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(400, 70);
                    }), //tamanho
                
                  backgroundColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.grey;
                      }
                    }),


              ),
            ),
            
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => telajuzeiro()));
              },
              
              child: Row(
                children: [
                  
                  Icon(
                    Icons.account_balance,
                    size: 30.0,
                  ),
                  
                  Text(
                    ' Juazeiro', 
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              style: ButtonStyle(
                  
                  shape: 
                    MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),);
                    }),
                  
                  fixedSize: 
                    MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(400, 70);
                    }), 
                  
                  backgroundColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.grey;
                      }
                    }) 
              ),
            ),
            
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => telaespacoplural()));
              },
              child: Row(
                children: [
                  
                  Icon(
                    Icons.account_balance,
                    size: 30.0,
                  ),
                  
                  Text(
                    ' Biblioteca Espaço Plural', 
                    style: const TextStyle(fontSize: 20),
                  ),

                ],
              ),
              style: ButtonStyle(
                  
                  shape: 
                    MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),);
                    }),
                  
                  fixedSize: 
                    MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(400, 70);
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => telasenhordobonfim()));
              },
              child: Row(
                children: [
                  
                  Icon(
                    Icons.account_balance,
                    size: 30.0,
                  ),
                  
                  Text(
                    ' Senhor do Bonfim', 
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              
              style: 
                ButtonStyle(
                  shape: 
                    MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),);
                    }),
                  
                  fixedSize: 
                    MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(400, 70);
                    }),

                  backgroundColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.grey;
                      }
                    }) 
                ),
            ),
            
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => pauloafonso()));
              },
              child: Row(
                children: [
                  
                  Icon(
                    Icons.account_balance,
                    size: 30.0,
                  ),
                  
                  Text(
                    ' Paulo Afonso', 
                    style: const TextStyle(fontSize: 20),
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
                return Size(400, 70);
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
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => salgueiro()));},
              child: Row(
                children: [
                  
                  Icon(
                    Icons.account_balance,
                    size: 30.0,
                  ),
                  
                  Text(
                    ' Salgueiro', 
                    style: const TextStyle(fontSize: 20),
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
                return Size(400, 70);
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => serradacapivara()));
              },
              child: Row(
                children: [
                  
                  Icon(
                    Icons.account_balance,
                    size: 30.0,
                  ),
                  
                  Text(
                    ' São Raimundo Notato', 
                    style: const TextStyle(fontSize: 20),
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
                return Size(400, 70);
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => teladecienciasagrarias()));
              },
              child: Row(
                children: [
                  
                  Icon(
                    Icons.account_balance,
                    size: 30.0,
                  ),
                  
                  Text(
                    ' Campus de Ciências Agrárias', 
                    style: const TextStyle(fontSize: 20),
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
                return Size(400, 70);
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
