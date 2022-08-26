import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class teladocumentos extends StatefulWidget {
  const teladocumentos({Key? key}) : super(key: key);

  @override
  State<teladocumentos> createState() => _teladocumentosState();
}

class _teladocumentosState extends State<teladocumentos> {
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
      appBar: AppBar(backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(

          child: Column(

            children: [
              SizedBox(height: 20),
              Text("Manual de Normalização"),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
                label: Text('Cartilha'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/cartilha-tecnicas-de-utilizacao-do-sistema-pergamum.pdf");

                }
                ),),
              SizedBox(height: 20),
              Text('Carta de Doação'),
              SizedBox(height: 20),
              Text("Termo de Disponibilidade de TCC"),
              SizedBox(height: 20),
              Text("Carta de Serviços"),

            ],
          ),
        ),
      ) ,
    );
  }
}
