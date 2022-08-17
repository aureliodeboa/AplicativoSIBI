import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class telainicial extends StatefulWidget {
  const telainicial({Key? key}) : super(key: key);

  @override
  State<telainicial> createState() => _telainicialState();
}

class _telainicialState extends State<telainicial> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
           child: Column(
             children: [
               SizedBox(
                 width: MediaQuery.of(context).size.width,
                 child: Column(
                   children: [
                     Image.asset('imagem/sibi2.png'),
                     Text(  "O SIBI é o responsável pela coordenação e administração das bibliotecas e pelos recursos informacionais que servem de suporte às atividades de ensino, pesquisa e extensão, conforme as políticas, planos e programas da Univasf.O SIBI é composto por 07 (sete), bibliotecas: 01 (uma) central com aproximadamente "
                         "2.148,60 m² de área construída, localizada no Campus Petrolina -PE e 06 (seis) setoriais, localizadas nos campi de Juazeiro - BA com aproximadamente 604 m²; Ciências Agrárias -PE com aproximadamente 753 m²; São Raimundo Nonato-PI com aproximadamente 102 m²; Senhor do Bonfim - BA com aproximadamente 181 m², "
                         "Paulo Afonso com aproximadamente 82 m² e Salgueiro - PE que funciona provisoriamente em um espaço da biblioteca na Faculdade de Ciências Humanas do Sertão Central (Fachusc) até que o campus da universidade seja construído.",
                       style: TextStyle(
                         fontSize: 18,
                         color: Colors.grey[900],

                       ),),


                     YoutubePlayer(controller: YoutubePlayerController(
                        initialVideoId: 'rNsT5iGdsfo',
                      flags: YoutubePlayerFlags(
                        autoPlay: false,
                        mute:  false,
                      showLiveFullscreenButton: true,)
                    ),
                      progressIndicatorColor: Colors.red,
                    ),

                     Text(  "O SIBI é o responsável pela coordenação e administração das bibliotecas e pelos recursos informacionais que servem de suporte às atividades de ensino, pesquisa e extensão, conforme as políticas, planos e programas da Univasf.O SIBI é composto por 07 (sete), bibliotecas: 01 (uma) central com aproximadamente "
                         "2.148,60 m² de área construída, localizada no Campus Petrolina -PE e 06 (seis) setoriais, localizadas nos campi de Juazeiro - BA com aproximadamente 604 m²; Ciências Agrárias -PE com aproximadamente 753 m²; São Raimundo Nonato-PI com aproximadamente 102 m²; Senhor do Bonfim - BA com aproximadamente 181 m², "
                         "Paulo Afonso com aproximadamente 82 m² e Salgueiro - PE que funciona provisoriamente em um espaço da biblioteca na Faculdade de Ciências Humanas do Sertão Central (Fachusc) até que o campus da universidade seja construído.",
                       style: TextStyle(
                         fontSize: 18,
                         color: Colors.grey[900],

                       ),),
                   ],
                 ),
               ),
             ],
           ),
    );
  }
}


