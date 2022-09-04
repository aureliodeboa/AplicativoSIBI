import 'package:flutter/material.dart';
import 'package:sibi/redesociais.dart';
import 'package:sibi/telacatolgrafica.dart';
import 'package:sibi/teladocumentos.dart';
import 'package:sibi/telaguiausuario.dart';
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
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // centraliza para ocupar so o tamanho necessario
                mainAxisSize: MainAxisSize.min,

                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => telaguiausuario()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.person_outline),
                        Text(
                          ' Guia Do Usuario',
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      );
                    }), // Muda as Bordas
                        fixedSize:
                            MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(300, 60);
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
                          builder: (context) => telapergamun()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.search_outlined),
                        Text(' Como Consultar o Pergamun?')
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      );
                    }), // Muda as Bordas
                        fixedSize:
                            MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(300, 60);
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
                          builder: (context) => redesociais()));
                    },
                    child: Row(
                      children: [
                         Image.asset('imagem/icones/social.png',width: 25,color: Colors.white, ),
                        Text('  Redes Sociais'),
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                          return RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          );
                        }), // Muda as Bordas
                        fixedSize:
                        MaterialStateProperty.resolveWith<Size?>((states) {
                          return Size(300, 60);
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
                          builder: (context) => teladocumentos()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.collections_bookmark_outlined),
                        Text(' Documentos SIBI'),
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      );
                    }), // Muda as Bordas
                        fixedSize:
                            MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(300, 60);
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
                          builder: (context) => telanormalizacao()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.border_color_outlined),
                        Text(' Manual de Normalização'),
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                          return RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          );
                        }), // Muda as Bordas
                        fixedSize:
                        MaterialStateProperty.resolveWith<Size?>((states) {
                          return Size(300, 60);
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
                        builder: (context) => telatutoriais()));},
                    child: Row(children: [
                      Icon(Icons.subscriptions),
                      Text(' Tutoriais')
                    ]),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      );
                    }), // Muda as Bordas
                        fixedSize:
                            MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(300, 60);
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
                          builder: (context) => telareservalivro()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.touch_app_outlined),
                        Text(' Reserva e Renovação de Livros')
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      );
                    }), // Muda as Bordas
                        fixedSize:
                            MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(300, 60);
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
                          builder: (context) => telacatolgrafica()));
                    },
                    child: Row(children: [
                      Icon(Icons.drafts),
                      Text(' Ficha Catolografica')
                    ]),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      );
                    }), // Muda as Bordas
                        fixedSize:
                            MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(300, 60);
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
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.domain_add_outlined),
                        Text(' Declaração nada consta')
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      );
                    }), // Muda as Bordas
                        fixedSize:
                            MaterialStateProperty.resolveWith<Size?>((states) {
                      return Size(300, 60);
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
