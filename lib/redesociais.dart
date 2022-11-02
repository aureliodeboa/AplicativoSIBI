import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class redesociais extends StatefulWidget {
  const redesociais({Key? key}) : super(key: key);

  @override
  State<redesociais> createState() => _redesociaisState();
}

class _redesociaisState extends State<redesociais> {
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
      appBar:
          AppBar(title: Text(' Redes Sociais '), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            children: [
              Text(
                  "Links de acesso das atuais redes sociais do Sistema Integrado de Bibliotecas da Univasf:\n",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/instagram.png',
                    width: 25,
                  ),
                ),
                label: Text(
                  ' @sibiunivasf',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[400]),
                ),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://www.instagram.com/sibiunivasf/");
                }),
              ),
              SizedBox(height: 20),
              TextButton.icon(
                icon: Container(
                  child: Image.asset('imagem/icones/youtube.png',
                      width: 25, color: Colors.red),
                ),
                label: Text(
                  ' Canal no Youtube ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[400]),
                ),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://www.youtube.com/channel/UCqS2P-iF3rPHPEMbd4RSk0A");
                }),
              ),
              SizedBox(height: 20),
              TextButton.icon(
                icon: Container(
                  child: Image.asset('imagem/icones/facebook.png', width: 25),
                ),
                label: Text(
                  ' Facebook SIBI',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[400]),
                ),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://www.facebook.com/sibiunivasf/");
                }),
              ),
              SizedBox(height: 20),
              TextButton.icon(
                icon: Container(
                  child: Image.asset('imagem/icones/portal.png',
                      width: 25, color: Colors.amber[700]),
                ),
                label: Text(
                  ' Portal SIBI ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[400]),
                ),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi");
                }),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
