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
                            "O SIBI é o responsável pela coordenação e administração das bibliotecas e pelos recursos informacionais que servem "
                                "de suporte às atividades de ensino, pesquisa e extensão, conforme as políticas, planos e programas da Univasf.\n",style: TextStyle(fontSize: 18,
                            color: Colors.black),),
                        Text('Apresentação do SIBI em libras ',style: TextStyle(color: Colors.amber[700], fontSize: 22,)),
                        YoutubePlayer(controller: YoutubePlayerController(
                            initialVideoId: 'rNsT5iGdsfo',
                            flags: YoutubePlayerFlags(
                              autoPlay: false,
                              mute:  false,
                              showLiveFullscreenButton: true,
                            )),),
                        Text(
                          textAlign: TextAlign.start,

                              "    \n O SIBI é composto por 07 (sete) bibliotecas, sendo 1 (uma) central e outras 06 (seis) setoriais.\n"
                              " \n A CENTRAL:\n"
                              "    -Com aproximadamente 2.148,60 m² de área construída, localizada no Campus Petrolina-PE\n"
                              "         \n AS SETORIAIS LOCALIZADAS NOS CAMPI:\n"
                              "        \n -Juazeiro-BA \n"
                              "        \n -Ciências Agrárias-PE \n"
                              "        \n -São Raimundo Nonato-PI\n"
                              "        \n -Senhor do Bonfim-BA \n"
                              "        \n -Paulo Afonso-BA \n"
                              "        \n - Salgueiro-PE \n"
                                  "    \n - Serra da Capivara- PI \n",
                          style: TextStyle(
                            fontSize: 18,
                              color: Colors.black

                          ),

                        ),

                        Text('Objetivos do SIBI ',style: TextStyle(color: Colors.amber[700], fontSize: 25,)),
                        Text(
                          "   \n-Coordenar e supervisionar suas atividades técnicas.\n"
                              "\n-Padronizar os serviços oferecidos à comunidade acadêmica da Universidade.\n"
                              "\n-Auxiliar no processo de aquisição dos recursos de informação disponíveis na Universidade, bem como sua organização e divulgação.\n"
                              "\n-Manter intercâmbio com instituições nacionais e internacionais, visando enriquecimento e diversidade do acervo.\n",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[900],

                          ),),
                        Text('Serviços',style: TextStyle(color: Colors.amber[700], fontSize: 25,)),
                        Text(
                          "\n-Consultas.\n"
                              "\n-Empréstimo e devolução de material bibliográfico.\n"
                              "\n-Declaração de Isenção de Débito.\n"
                              "\n-Treinamento e orientação à pesquisa (Serviços de Referência).\n"
                              "\n-Sistema Pergamum e bases científicas (Capes, Scielo, Bireme, etc) e uso das normas da ABNT.\n"
                              "\n-Comutação Bibliográfica (IBICT/COMUT).\n"
                              "\n-Serviço Cooperativo de Acesso a Documento (SCAD).\n"
                              "\n-Ficha catalográfica (Catalogação na fonte).\n"
                              "\n-Visita orientada.\n"
                              "\n-Incorporação de material ao acervo.\n"
                              "\n-Aquisição de material bibliográfico.\n"
                              "\n-Solicitação de ISBN.\n",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,),),

                        Text('Cadastro de Usuários',style: TextStyle(color: Colors.amber[700], fontSize: 25,)),
                        Text(
                          "\n Os discentes vinculados à Univasf serão inscritos na biblioteca mediante comprovante de matrícula e documento de identificação com foto\n"
                           "\n Servidores serão inscritos na biblioteca mediante  documento de identidade funcional ou comprovante devínculo com a Univasf e documento com foto.",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,),),
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