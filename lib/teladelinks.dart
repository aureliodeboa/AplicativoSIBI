import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class teladelinks extends StatefulWidget {
  const teladelinks({Key? key}) : super(key: key);

  @override
  State<teladelinks> createState() => _teladelinksState();
}

class _teladelinksState extends State<teladelinks> {
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
      
      body: Center(
        child: Column(
          children: [
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/pergamun.png',width: 30,color:Colors.amber[700] ),),
              label: Text('Pergamum Mobile',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://biblioteca.univasf.edu.br/pergamum/mobile/index.php");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/youtube.png',width: 30,color:Colors.red ),),
              label: Text('Canal do Youtube',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://www.youtube.com/channel/UCqS2P-iF3rPHPEMbd4RSk0A");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/instagram.png',width: 30 ),),
              label: Text('Instagram SIBI',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://www.instagram.com/sibiunivasf/");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/portal.png',width: 30,color: Colors.amber[700], ),),
              label: Text('Portal SIBI',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://portais.univasf.edu.br/sibi");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/deposito.png',width: 30,color: Colors.amber[700], ),),
              label: Text('Depósito de Trabalhos Acadêmicos',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://portais.univasf.edu.br/sibi/informacao-ao-usuario/orientacoes-para-entrega-de-trabalhos-academicos");

              }
              ),),
            TextButton.icon(
              icon: Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
              label: Text('Manual de Normalização',style: TextStyle(color: Colors.black)),
              onPressed: () => setState(() {
                launchExternalWebsite("https://portais.univasf.edu.br/sibi/manual-de-normalizacao-2019.pdf");

              }
              ),),

          ],
        ),
      ),
    );

  }
}
