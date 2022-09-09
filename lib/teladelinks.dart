import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:sibi/redesociais.dart';
import 'package:sibi/telacatolgrafica.dart';
import 'package:sibi/teladocumentos.dart';
import 'package:sibi/telaguiausuario.dart';
import 'package:sibi/telanadaconsta.dart';
import 'package:sibi/telanormalizacao.dart';
import 'package:sibi/telapegamun.dart';
import 'package:sibi/telareservalivro.dart';
import 'package:sibi/telatutoriais.dart';

class teladelinks extends StatefulWidget {
  const teladelinks({Key? key}) : super(key: key);

  @override
  State<teladelinks> createState() => _teladelinksState();
}

class _teladelinksState extends State<teladelinks> {
  void launchExternalWebsite(String url) async {
    var urlUri = Uri.parse(url);
    if (await canLaunchUrl(urlUri)) {
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'could not lanch $urlUri';
    }
  }

  double _L = 500, _H = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // centraliza para ocupar so o tamanho necessario
            mainAxisSize: MainAxisSize.min,

            children: [
              // Image.asset('imagem/logosibiunivasf.jpg'),
              Text(
                'MENU',
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => telaguiausuario()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      size: 30.0,
                    ),
                    Text(
                      ' Guia do Usuário',
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => telapergamun()));
                },
                child: Row(
                  children: [
                    Icon(Icons.search_outlined, size: 30.0),
                    Text(
                      ' Como Consultar o Pergamum?',
                      style: const TextStyle(fontSize: 20),
                    )
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => redesociais()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.polyline,
                      size: 30.0,
                    ),
                    Text(
                      ' Redes Sociais',
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => teladocumentos()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.collections_bookmark_outlined,
                      size: 30.0,
                    ),
                    Text(
                      ' Documentos SIBI',
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => telacatolgrafica()));
                },
                child: Row(children: [
                  Icon(
                    Icons.drafts,
                    size: 30.0,
                  ),
                  Text(
                    ' Ficha Catalográfica',
                    style: const TextStyle(fontSize: 20),
                  )
                ]),
                style: ButtonStyle(
                    shape: MaterialStateProperty.resolveWith((states) {
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
                }) //cor de fundo
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => telanadaconsta()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 30.0,
                    ),
                    Text(
                      ' Declaração Nada Consta',
                      style: const TextStyle(fontSize: 20),
                    )
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => telanormalizacao()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.border_color_outlined,
                      size: 30.0,
                    ),
                    Text(
                      ' Manual de Normalização',
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => telatutoriais()));
                },
                child: Row(children: [
                  Icon(
                    Icons.school,
                    size: 30.0,
                  ),
                  Text(
                    ' Tutoriais',
                    style: const TextStyle(fontSize: 20),
                  )
                ]),
                style: ButtonStyle(
                    shape: MaterialStateProperty.resolveWith((states) {
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
                    Icon(
                      Icons.touch_app_outlined,
                      size: 30.0,
                    ),
                    Text(
                      ' Reserva e Renovação de Livros',
                      style: const TextStyle(fontSize: 20),
                    )
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
            ],
          ),
        ),
      ),
    );
  }
}
/* Center(
        child: Column(
          children: [
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/pergamun.png',width: 30,color:Colors.amber[700] ),),
              label: Text('Pergamum Mobile',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://biblioteca.univasf.edu.br/pergamum/mobile/index.php");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/youtube.png',width: 30,color:Colors.red ),),
              label: Text('Canal do Youtube',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://www.youtube.com/channel/UCqS2P-iF3rPHPEMbd4RSk0A");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/instagram.png',width: 30 ),),
              label: Text('Instagram SIBI',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://www.instagram.com/sibiunivasf/");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/portal.png',width: 30,color: Colors.amber[700], ),),
              label: Text('Portal SIBI',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://portais.univasf.edu.br/sibi");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/deposito.png',width: 30,color: Colors.amber[700], ),),
              label: Text('Depósito de Trabalhos Acadêmicos',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://portais.univasf.edu.br/sibi/informacao-ao-usuario/orientacoes-para-entrega-de-trabalhos-academicos");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
              label: Text('Manual de Normalização',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://portais.univasf.edu.br/sibi/manual-de-normalizacao-2019.pdf");

              }
              ),),

          ],
        ),
      ),  */
