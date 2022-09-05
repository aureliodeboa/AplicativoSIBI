import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class telanormalizacao extends StatefulWidget {
  const telanormalizacao({Key? key}) : super(key: key);

  @override
  State<telanormalizacao> createState() => _telanormalizacaoState();
}

class _telanormalizacaoState extends State<telanormalizacao> {
  @override
  void launchExternalWebsite(String url) async {
    var urlUri= Uri.parse(url);
    if(await canLaunchUrl(urlUri)){
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    }else {
      throw 'could not lanch $urlUri';
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Normalização")),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(

          child: Column(

            children: [
              SizedBox(height: 20),
              Text("O Sistema Integrado de Bibliotecas da UNIVASF disponibiliza à comunidade acadêmica"
                  " as principais normas da Associação Brasileira de Normas Técnicas (ABNT)."
                  " Para informações sobre acesso às normas requisite a um dos colaboradores no balcão de atendimento ou bibliotecário de referência. \n"
                  "\nPara a elaboração de trabalhos acadêmicos desenvolvidos no âmbito da Univasf consulte o Manual de Normalização elaborado com base nas normas da ABNT,"
                  " bem como modelos e instruções disponíveis abaixo:  "),


              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
                label: Text(' \nManual de Normalização de Trabalhos Academicos da Univasf'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/manual-de-normalizacao-2019.pdf");

                }
                ),),

              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
                label: Text(' \n Relação de Normas Técnicas  da ABNT utilizadas para trabalhos de Conclusão de Curso (TCC)'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/imagens/relacao-de-normas-tecnicas-para-trabalhos-de-conclusao-de-curso.pdf");

                }
                ),),

              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
                label: Text(' \nModelo de TCC - Monografia                                         '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/modelo-de-tcc-monografia.docx");

                }
                ),),

              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
                label: Text(' \nLivro Publicar em Psicologia USP                                '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/publicar-em-psicologia-um-enfoque-para-a-revista-cientifica.pdf");

                }
                ),),

              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/doc.png',width: 30, ),),
                label: Text(' \nInstruções para Depósito de TCC em Formato de Artigo - word'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/instrucoes-para-deposito-de-tcc-em-formato-de-artigo.docx");

                }
                ),),

              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
                label: Text(' \nInstruções para Depósito de TCC em Formato de Artigo - pdf'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/instrucoes-para-deposito-de-tcc-em-formato-de-artigo.pdf");

                }
                ),),

              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
                label: Text(' \nInstruções para Depósitos de TCC em outros formatos - pdf'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/instrucoes-para-deposito-em-outros-formatos.pdf");

                }
                ),),

              Text("\n ATENCÃO:                                                                                                        \n",style: TextStyle(inherit: true,color: Colors.black),),
              Text(" Trabalhos que decorram de atividades financiadas, integral ou parcialmente, pela CAPES, deverão, obrigatoriamente, fazer referência ao apoio recebido conforme Portaria nº 206, de 4 de setembro de 2018. Indica-se que esta menção seja feita no último parágrafo de agradecimento, utilizando-se da expressão:\n"
                  "\n 'O presente trabalho foi realizado com apoio da Coordenação de Aperfeiçoamento de Pessoal de Nível Superior - Brasil (CAPES) - Código de Financiamento 001'"),

              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 00,color: Colors.red[700], ),),
                label: Text(' \n PORTARIA Nº 206, de 4 de setembro 2018'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/portaria-da-capes.pdf");

                }
                ),),


            ],
          ),
        ),
      ) ,
    );
  }
}
