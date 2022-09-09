import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class telapergamun extends StatefulWidget {
  const telapergamun({Key? key}) : super(key: key);

  @override
  State<telapergamun> createState() => _telapergamunState();
}

class _telapergamunState extends State<telapergamun> {
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
          backgroundColor: Colors.blue[400],
          title: Text('Como Consultar o Pergamum')),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          //heightFactor: 2,
          child: Column(
            children: [
              Text('\n A Cartilha Técnicas de Utilização do Sistema Pergamum'
                  ' traz a descrição das formas de pesquisa e acesso às obras do catálogo online das bibliotecas '
                  'e demais serviços disponíveis aos usuários via sistema Pergamum.\n',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/pdf.png',
                    width: 30,
                    color: Colors.red[700],
                  ),
                ),
                label: Text('Cartilha'),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://portais.univasf.edu.br/sibi/cartilha-tecnicas-de-utilizacao-do-sistema-pergamum.pdf");
                }),
              ),
              Text("\n Tutorial de como fazer uma consulta no Pergamum :\n",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              //Text('\n Tutorial \n ',style: TextStyle(color: Colors.amber[700], fontSize: 20,)),
              // Text('Siga as instruções do video asseguir:',style: TextStyle(color: Colors.black, fontSize: 18,)),
              YoutubePlayer(
                controller: YoutubePlayerController(
                    initialVideoId: 'cTIByTdQQh0',
                    flags: YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                      showLiveFullscreenButton: true,
                      hideControls: false,
                    )),
              ),
              Text(
                  '\n \nPara realizar uma pesquisa básica em nosso catálogo execute os seguintes passos: \n'
                  '\n• Acesse o pergamum, que pode ser o Pergamum Mobile disponivel nesta pagina, quanto o site disponivel no  SIBI \n '
                  '\n• Acesse o catálogo da biblioteca clicando sobre a aba "Consulta ao Acervo", localizada no alto dessa tela\n'
                  '\n• Na tela principal do sistema, clique sobre a caixa de “Pesquisa Geral”\n'
                  '\n• Defina os parâmetro para os filtros de pesquisa e digite na caixa de texto a palavra chave desejada\n'
                  '\n• Clique sobre o título da obra desejada \n'
                  '\n• Anote o número de chamada para localizar o documento no acervo\n'
                  '\n• Para consultar a quantidade e a disponibilidade de exemplares, clique em “exemplares”.\n',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              TextButton.icon(
                icon: Container(
                  child: Image.asset('imagem/icones/pergamun.png',
                      width: 30, color: Colors.amber[700]),
                ),
                label: Text(' Acesse O Pergamum Mobile'),
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://biblioteca.univasf.edu.br/pergamum/mobile/index.php");
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
