import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class telacatolgrafica extends StatefulWidget {
  const telacatolgrafica({Key? key}) : super(key: key);

  @override
  State<telacatolgrafica> createState() => _telacatolgraficaState();
}

class _telacatolgraficaState extends State<telacatolgrafica> {

  void launchExternalWebsite(String url) async {
    var urlUri= Uri.parse(url);
    if(await canLaunchUrl(urlUri)){
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    }else {
      throw 'could not lanch $urlUri';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Ficha Catolografica")),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(

          child: Column(
            children: [
              Text("\nDADOS INTERNACIONAIS DE CATALOGAÇÃO NA PUBLICAÇÃO(CIP):\n "),
              Text(" Conhecida como ficha catalográfica. É o registro das informações que"
                  " identificam a publicação na sua situação atual. Para confecção da ficha"
                  " catalográfica, conforme o Código de Catalogação Anglo-Americano vigente,"
                  " deverá ser solicitado auxílio de um bibliotecário do seu campus."),
              Text("\n • A ficha catalográfica deverá estar localizada na parte inferior do verso da folha de rosto, de forma centralizada no "
                  " trabalho impresso e também deve constar no trabalho em formato digital."),
              Text("\n • Encaminhar o trabalho completo ou na impossibilidade de envio de todo o trabalho, encaminhar a capa,"
                  " folha de rosto, sumário, resumo com as palavras-chave e a introdução do trabalho do solicitante para"
                  "o e-mail da biblioteca do seu campus."),
              Text("\n • Deve ser preenchida conforme modelo disponível no arquivo abaixo.\n"),
              Text("\nRESOLUÇÃO CFB  Nº 184 - Dispõe sobre a obrigatoriedade da indicação do nome "
                  "e do registro profissional do bibliotecário nos documentos de sua responsabilidade "
                  "e nas fichas catalográficas em publicações de qualquer natureza."
                  " \n“Art. 3º – É obrigatório que conste o número de registro no CRB do "
                  "bibliotecário abaixo das fichas catalográficas de publicações de quaisquer"
                  " natureza e trabalhos acadêmicos.”\n "
                  "\nPublicado no Diário Oficial da União (D.O.U)"
                  " no dia 06 de outubro de 2017."),
              TextButton.icon(
                icon: Container(child: Image.asset('imagem/icones/pdf.png',width: 25 ,color: Colors.red[700],),),
                label: Text('RESOLUÇÃO CFB  Nº 184',style: TextStyle(color: Colors.black)),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/resolucao-184-catalogacao-na-fonte.pdf");

                }
                ),),
              Text("OBS.: PARA TRABALHOS EM FORMATO DE ARTIGO NÃO SERÃO ELABORADAS AS FICHAS CATALOGRÁFICAS."),
              TextButton.icon(
                icon: Container(child: Image.asset('imagem/icones/doc.png',width: 25 ,),),
                label: Text(' MODELO DA FICHA CATALOGRÁFICA E ORIENTAÇÕES',style: TextStyle(color: Colors.black)),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/modelo-de-ficha-catalografica.docx");

                }
                ),),

            ],

          ),
        ),
      ) ,
    );
  }
}
