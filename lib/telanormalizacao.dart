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
    var urlUri = Uri.parse(url);
    if (await canLaunchUrl(urlUri)) {
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    } else {
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
              Text(
                  "Para a elaboração de trabalhos acadêmicos desenvolvidos no âmbito da Univasf consulte o Manual de Normalização elaborado com base nas normas da ABNT,"
                  " bem como modelos e instruções disponíveis abaixo:  ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/pdf.png',
                    width: 30,
                    color: Colors.red[700],
                  ),
                ),
                label: Text(
                    ' \nManual de Normalização de Trabalhos Academicos da Univasf',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[400])),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/manual-de-normalizacao-2019.pdf");
                }),
              ),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/pdf.png',
                    width: 30,
                    color: Colors.red[700],
                  ),
                ),
                label: Text(
                    ' \n Relação de Normas Técnicas  da ABNT utilizadas para trabalhos de Conclusão de Curso (TCC)',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[400])),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/imagens/relacao-de-normas-tecnicas-para-trabalhos-de-conclusao-de-curso.pdf");
                }),
              ),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/pdf.png',
                    width: 30,
                    color: Colors.red[700],
                  ),
                ),
                label: Text(
                    ' \nModelo de TCC - Monografia                                         '),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/modelo-de-tcc-monografia.docx");
                }),
              ),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/pdf.png',
                    width: 30,
                    color: Colors.red[700],
                  ),
                ),
                label: Text(
                    ' \nLivro Publicar em Psicologia USP                                ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[400])),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/publicar-em-psicologia-um-enfoque-para-a-revista-cientifica.pdf");
                }),
              ),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/doc.png',
                    width: 30,
                  ),
                ),
                label: Text(
                    ' \nInstruções para Depósito de TCC em Formato de Artigo - word',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[400])),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/instrucoes-para-deposito-de-tcc-em-formato-de-artigo.docx");
                }),
              ),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/pdf.png',
                    width: 30,
                    color: Colors.red[700],
                  ),
                ),
                label: Text(
                    ' \nInstruções para Depósito de TCC em Formato de Artigo - pdf',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[400])),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/instrucoes-para-deposito-de-tcc-em-formato-de-artigo.pdf");
                }),
              ),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/pdf.png',
                    width: 30,
                    color: Colors.red[700],
                  ),
                ),
                label: Text(
                    ' \nInstruções para Depósitos de TCC em outros formatos - pdf',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[400])),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/instrucoes-para-deposito-em-outros-formatos.pdf");
                }),
              ),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/deposito.png',
                    width: 28,
                    color: Colors.amber[700],
                  ),
                ),
                label: Text(
                  'Depósito de Trabalhos Acadêmicos                           ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[400]),
                ),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/informacao-ao-usuario/orientacoes-para-entrega-de-trabalhos-academicos");
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
