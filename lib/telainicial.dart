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
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Column(
                      children: [
                        // Image.asset('imagem/sibi2.png'),
                        Text('APRESENTAÇÃO\n ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 253, 152, 2),
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.underline,
                            )),
                        Text(
                          textAlign: TextAlign.start,
                          "O SIBI é o responsável pela coordenação e administração das bibliotecas e pelos recursos informacionais que servem "
                          "de suporte às atividades de ensino, pesquisa e extensão, conforme as políticas, planos e programas da Univasf.\n",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text('Apresentação do SIBI em libras\n ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 253, 152, 2),
                                fontSize: 25,
                                fontWeight: FontWeight.w700)),
                        YoutubePlayer(
                          controller: YoutubePlayerController(
                              initialVideoId: 'rNsT5iGdsfo',
                              flags: YoutubePlayerFlags(
                                autoPlay: false,
                                mute: false,
                                showLiveFullscreenButton: true,
                              )),
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                            textAlign: TextAlign.start,
                            "    \n O SIBI é composto por 07 (sete) bibliotecas, sendo 1 (uma) central e outras 06 (seis) setoriais.\n"
                            "\n Conta ainda, com uma unidade localizada no Espaço Plural da Pró Reitoria de Extensão (PROEX), subordinada à Biblioteca de Juazeiro.\n"
                            "\n BIBLIOTECA CENTRAL:\n"
                            "\n• Petrolina - PE\n "
                            "\n BIBLIOTECAS SETORIAIS:\n "
                            "\n• Juazeiro - BA \n"
                            "\n• Ciências Agrárias - PE\n"
                            "\n• São Raimundo Nonato - PI\n"
                            "\n• Senhor do Bonfim - BA\n "
                            "\n• Paulo Afonso - BA\n "
                            "\n• Salgueiro - PE\n",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),

                        Text('Objetivos do SIBI ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 253, 152, 2),
                                fontSize: 25,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "   \n-Coordenar e supervisionar suas atividades técnicas.\n"
                          "\n-Padronizar os serviços oferecidos à comunidade acadêmica da Universidade.\n"
                          "\n-Auxiliar no processo de aquisição dos recursos de informação disponíveis na Universidade, bem como sua organização e divulgação.\n"
                          "\n-Manter intercâmbio com instituições nacionais e internacionais, visando enriquecimento e diversidade do acervo.\n",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text('Serviços',
                            style: TextStyle(
                                color: Color.fromARGB(255, 253, 152, 2),
                                fontSize: 25,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "\n-Consultas;\n"
                          "\n-Empréstimo e devolução de material bibliográfico;\n"
                          "\n-Declaração de Isenção de Débito(nada-consta);\n"
                          "\n-Treinamento e orientação à pesquisa em bases de dados (Serviço de Referência);\n"
                          "\n-Catálogo Pergamum e bases científicas (Portal de Periódicos Capes);\n"
                          "\n-Treinamento de uso das normas técnicas (ABNT);\n"
                          "\n-Comutação Bibliográfica (IBICT/COMUT);\n"
                          "\n-Ficha catalográfica (Catalogação na fonte);\n"
                          "\n-Visita guiada às bibliotecas;\n"
                          "\n-Solicitação de ISBN/ISSN.\n",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),

                        Text('Cadastro de Usuários',
                            style: TextStyle(
                                color: Color.fromARGB(255, 253, 152, 2),
                                fontSize: 25,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "\n • Os discentes vinculados à Univasf serão inscritos na biblioteca mediante comprovante de matrícula e documento de identificação com foto.\n"
                          "\n • Servidores serão inscritos na biblioteca mediante documento de identidade funcional ou comprovante de vínculo com a Univasf e documento com foto.\n"
                          "\n • Professores visitantes, substitutos, voluntários, associados e bolsistas terão acesso aos serviços da biblioteca mediante apresentação de documento de identificação com foto e"
                          " comprovante de vínculo com a Instituição, constando a data inicio e término do contrato e documento com foto.\n "
                          "\n • Servidores do Hospital Universitário (EBSERH) terão acesso aos serviços"
                          " da biblioteca mediante apresentação do último contracheque ou algum comprovante de vinculação com a EBSERH e um documento de identificação com foto.\n"
                          "\n • A comunidade externa terá acesso aos materiais através da consulta local.\n ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
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
