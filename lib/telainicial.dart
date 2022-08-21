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
                Center(child:Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child:Column(
                      children: [
                        Image.asset('imagem/sibi2.png'),
                        Text('Apresentação',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            shadows:[
                              Shadow(
                                color: Colors.black54,
                                blurRadius: 2,
                                offset: Offset(2,1),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          "    O SIBI é o responsável pela coordenação e administração das bibliotecas e pelos recursos informacionais que servem "
                              "de suporte às atividades de ensino, pesquisa e extensão, conforme as políticas, planos e programas da Univasf.\n"
                              "    O SIBI é composto por 07 (sete) bibliotecas, sendo 1 (uma) central e outras 06 (seis) setoriais.\n"
                              "    A central:\n"
                              "        -Com aproximadamente 2.148,60 m² de área construída, localizada no Campus Petrolina-PE\n"
                              "    As setoriais localizadas nos campi:\n"
                              "        -Juazeiro-BA com aproximadamente 604 m²\n"
                              "        -Ciências Agrárias-PE com aproximadamente 753 m²\n"
                              "        -São Raimundo Nonato-PI com aproximadamente 102 m²\n"
                              "        -Senhor do Bonfim-BA com aproximadamente 181 m²\n"
                              "        -Paulo Afonso com aproximadamente 82 m²\n"
                              "        -E Salgueiro-PE que funciona provisoriamente em um espaço da biblioteca na Faculdade de Ciências Humanas do Sertão Central (Fachusc) até que o campus da universidade seja construído.",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[900],

                          ),

                        ),
                        Text('Apresentação em libras :',style: TextStyle(color: Colors.amber, fontSize: 30,)),
                        YoutubePlayer(controller: YoutubePlayerController(
                            initialVideoId: 'rNsT5iGdsfo',
                            flags: YoutubePlayerFlags(
                              autoPlay: false,
                              mute:  false,
                              showLiveFullscreenButton: true,
                            )),),
                        Text('Objetivos do SIBI :',style: TextStyle(color: Colors.amber, fontSize: 30,)),
                        Text(
                          "-Coordenar e supervisionar suas atividades técnicas.\n"
                              "-Padronizar os serviços oferecidos à comunidade acadêmica da Universidade.\n"
                              "-Auxiliar no processo de aquisição dos recursos de informação disponíveis na Universidade, bem como sua organização e divulgação.\n"
                              "-Manter intercâmbio com instituições nacionais e internacionais, visando enriquecimento e diversidade do acervo.",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[900],

                          ),),
                        Text('Serviços:',style: TextStyle(color: Colors.amber, fontSize: 30,)),
                        Text(
                          "-Consulta.\n"
                              "-Empréstimo e devolução de material bibliográfico.\n"
                              "-Declaração de Isenção de Débito.\n"
                              "-Treinamento e orientação à pesquisa (Serviços de Referência).\n"
                              "-Sistema Pergamum e bases científicas (Capes, Scielo, Bireme, etc) e uso das normas da ABNT.\n"
                              "-Comutação Bibliográfica (IBICT/COMUT).\n"
                              "-Serviço Cooperativo de Acesso a Documento (SCAD).\n"
                              "-Ficha catalográfica (Catalogação na fonte).\n"
                              "-Visita orientada.\n"
                              "-Incorporação de material ao acervo.\n"
                              "-Aquisição de material bibliográfico.\n"
                              "-Solicitação de ISBN.\n",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[900],),),
                      ],
                    ),

                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}