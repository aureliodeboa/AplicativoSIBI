import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
class telapergamun extends StatefulWidget {
  const telapergamun({Key? key}) : super(key: key);

  @override
  State<telapergamun> createState() => _telapergamunState();
}

class _telapergamunState extends State<telapergamun> {
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
      appBar: AppBar(
        backgroundColor: Colors.blue[400],title: Text('Como Consultar o Pergamum')
        
      ),
      body: SingleChildScrollView(
        child: Center(
          //heightFactor: 2,
          child: Column(

            children: [
              Text('\n A Cartilha Técnicas de Utilização do Sistema Pergamum'
                  ' traz a descrição das formas de pesquisa e acesso às obras do catálogo online das bibliotecas '
                  'e demais serviços disponíveis aos usuários via sistema Pergamum.\n'
                  ),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 30,color: Colors.red[700], ),),
                label: Text('Cartilha'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/cartilha-tecnicas-de-utilizacao-do-sistema-pergamum.pdf");

                }
                ),),
              Text('Como fazer uma pesquisa básica?'),
              Text('Para realizar uma pesquisa básica em nosso catálogo execute os seguintes passos: \n '
                  '1) acesse o catálogo da biblioteca clicando sobre a aba "Consulta ao Acervo", localizada no alto dessa tela;\n'
                  '2) na tela principal do sistema, clique sobre a caixa de “Pesquisa Geral”;\n'
                  '3) Defina os parâmetro para os filtros de pesquisa e digite na caixa de texto a palavra chave desejada;\n'
                  '4) clique sobre o título da obra desejada; \n'
                  '5) anote o número de chamada para localizar o documento no acervo;\n'
                  '6) Para consultar a quantidade e a disponibilidade de exemplares, clique em “exemplares”.\n'),
              TextButton.icon(
                icon: Container(child: Image.asset('imagem/icones/pergamun.png',width: 30,color:Colors.amber[700] ),),
                label: Text(' Acesse O Pergamum Mobile'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://biblioteca.univasf.edu.br/pergamum/mobile/index.php");

                }
                ),)

            ],
          ),
        ),
      ),
    );
  }
}
