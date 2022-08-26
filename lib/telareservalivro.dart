
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
class telareservalivro extends StatefulWidget {
  const telareservalivro({Key? key}) : super(key: key);

  @override
  State<telareservalivro> createState() => _telareservalivroState();
}

class _telareservalivroState extends State<telareservalivro> {
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
        backgroundColor: Colors.blue[400],
       title: Text('Reserva  e  Renovaçao de Livros'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            children: [

              Text('Como fazer uma reserva?\n '
                  '\n Para realizar reserva de exemplares, execute os seguintes passos:\n '
                  '\n1) acesse o catálogo da biblioteca clicando sobre a aba "Consulta ao Acervo", localizada no alto dessa tela;\n'
                  '\n2) na tela principal do sistema, clique sobre a caixa de “Pesquisa Geral”;\n'
                  '\n3) defina os parâmetros para os filtros de pesquisa e digite na caixa de texto a palavra chave desejada;\n'
                  '\n4) clique sobre o título da obra desejada;\n'
                  '\n5) clique sobre a opção “Reserva”;\n'
                  '\n6) na tela “Dados do usuário para reserva” digite seu número de matricula e senha e clique sobre o botão “Confirmar” para concluir a reserva.\n'),

              Text(' Como Fazer uma renovação? \n'
                  '\nPara realizar renovação de empréstimo de exemplares a partir do sistema Pergamum execute os seguintes passos:\n'
                  '\n1) Clique na aba "Renovação - Reserva - Emissão de Nada Consta", localizada no alto desta página;\n'
                  '\n2) digite seu número de matrícula ou CPF e senha, nos campos indicados na tela;\n'
                  '\n3) Em  seu perfil, estarão as obras pendentes de devolução;\n'
                  '\n4) selecione os livros que deseja renovar o empréstimo e clique sobre o botão “Renovar”.\n'),
              TextButton.icon(
                icon: Icon(Icons.local_offer_outlined,color: Colors.amber[700],),
                label: Text('CLICK AQUI E RENOVE AGORA',style: TextStyle(color: Colors.blue,), ),
              onPressed: () => setState(() {
                    launchExternalWebsite("https://biblioteca.univasf.edu.br/pergamum/mobile/index.php");

              }
              ),)
            ],
          ),
        ),
      ),
    );;
  }
}
