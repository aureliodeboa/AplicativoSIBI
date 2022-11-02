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
    var urlUri = Uri.parse(url);

    if (await canLaunchUrl(urlUri)) {
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'could not lanch $urlUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue, title: Text("Ficha Catolografica")),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            children: [
              Text(
                  "\nA ficha catalográfica deverá estar localizada na parte inferior do verso da folha de rosto, de forma centralizada no trabalho impresso e também deve constar no trabalho em formato digital.\n ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text(
                  " Para solicitação o usuário deve encaminhar: o modelo preenchido da ficha (disponível no arquivo abaixo), o trabalho completo ou na impossibilidade de envio de todo o trabalho, encaminhar a capa, folha de rosto, sumário, resumo com as palavras-chave e a introdução do trabalho do solicitante para o e-mail da biblioteca do seu campus.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text(
                  "\nOBS: É obrigatório que conste o número de registro no CRB do bibliotecário na ficha catalográfica de publicações de quaisquer natureza e trabalhos acadêmicos, conforme Art. 3º da RESOLUÇÃO CFB Nº 184, de 06 de outubro de 2017.\n",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/doc.png',
                    width: 25,
                  ),
                ),
                label: Text(' MODELO DA FICHA CATALOGRÁFICA E ORIENTAÇÕES',
                    style: TextStyle(color: Colors.black)),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/modelo-de-ficha-catalografica.docx");
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
