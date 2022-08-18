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
                     Text('Apresentação :',style: TextStyle(color: Colors.amber, fontSize: 30,)),
                     Text(  "O SIBI é o responsável pela coordenação e administração das bibliotecas e pelos recursos informacionais que servem de suporte às atividades de ensino, pesquisa e extensão, conforme as políticas, planos e programas da Univasf.O SIBI é composto por 07 (sete), bibliotecas: 01 (uma) central com aproximadamente "
                         "2.148,60 m² de área construída, localizada no Campus Petrolina -PE e 06 (seis) setoriais, localizadas nos campi de Juazeiro - BA com aproximadamente 604 m²; Ciências Agrárias -PE com aproximadamente 753 m²; São Raimundo Nonato-PI com aproximadamente 102 m²; Senhor do Bonfim - BA com aproximadamente 181 m², "
                         "Paulo Afonso com aproximadamente 82 m² e Salgueiro - PE que funciona provisoriamente em um espaço da biblioteca na Faculdade de Ciências Humanas do Sertão Central (Fachusc) até que o campus da universidade seja construído.",
                       style: TextStyle(
                         fontSize: 18,
                         color: Colors.grey[900],

                       ),),
                     Text('Apresentação em libras :',style: TextStyle(color: Colors.amber, fontSize: 30,)),

                     YoutubePlayer(controller: YoutubePlayerController(
                        initialVideoId: 'rNsT5iGdsfo',
                      flags: YoutubePlayerFlags(
                        autoPlay: false,
                        mute:  false,
                      showLiveFullscreenButton: true,
                      )),),
                     Text('Objetivos do SIBI :',style: TextStyle(color: Colors.amber, fontSize: 30,)),
                     Text(  "São objetivos do SIBI:Coordenar e supervisionar suas atividades técnicas;"
                         " Padronizar os serviços oferecidos à comunidade acadêmica da Universidade;"
                         " Auxiliar no processo de aquisição dos recursos de informação disponíveis na Universidade, bem como sua organização e divulgação;Manter intercâmbio com instituições nacionais e internacionais, visando enriquecimento e diversidade do acervo.",
                       style: TextStyle(
                         fontSize: 18,
                         color: Colors.grey[900],

                       ),),
                     Text('Serviços:',style: TextStyle(color: Colors.amber, fontSize: 30,)),
                     Text("Consulta, empréstimo e devolução de material bibliográfico."
                         " Declaração de Isenção de Débito. Treinamento e orientação à pesquisa (Serviços de Referência): "
                         "Sistema Pergamum e bases científicas (Capes, Scielo, Bireme, etc) e uso das nor­mas da ABNT. Comutação Bibliográfica (IBICT/COMUT). "
                         "Serviço Cooperativo de Acesso a Documento (SCAD). Ficha catalográfica (Catalogação na fonte)."
                         " Visita orientada. Incorporação de material ao acervo. "
                         "Aquisição de material bibliográfico. Solicitação de ISBN.",style: TextStyle(
                       fontSize: 18,
                       color: Colors.grey[900],),)
                   ],
                 ),
               ),
             ],
           ),
    );
  }
}


