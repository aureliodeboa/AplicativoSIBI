import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _url = Uri.parse('https://biblioteca.univasf.edu.br/pergamum/mobile/index.php');
class telareservalivro extends StatefulWidget {
  const telareservalivro({Key? key}) : super(key: key);






  @override
  State<telareservalivro> createState() => _telareservalivroState();
}

class _telareservalivroState extends State<telareservalivro> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await canLaunchUrl(url,
      //mode:  LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
  final httpsUri = Uri.https('example.com', 'api/fetch', {'limit': '10'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
       title: Text('Reserva de Livros'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Text('Como fazer uma reserva?\n '
                  '\n Para realizar reserva de exemplares, execute os seguintes passos:\n '
                  '1) acesse o catálogo da biblioteca clicando sobre a aba "Consulta ao Acervo", localizada no alto dessa tela;\n'
                  '2) na tela principal do sistema, clique sobre a caixa de “Pesquisa Geral”;\n'
                  '3) defina os parâmetros para os filtros de pesquisa e digite na caixa de texto a palavra chave desejada;\n'
                  '4) clique sobre o título da obra desejada;\n'
                  '5) clique sobre a opção “Reserva”;\n'
                  '6) na tela “Dados do usuário para reserva” digite seu número de matricula e senha e clique sobre o botão “Confirmar” para concluir a reserva.\n'),

              Text(' Como Fazer uma renovação? \n'
                  '\nPara realizar renovação de empréstimo de exemplares a partir do sistema Pergamum execute os seguintes passos:\n'
                  '1) Clique na aba "Renovação - Reserva - Emissão de Nada Consta", localizada no alto desta página;\n'
                  '2) digite seu número de matrícula ou CPF e senha, nos campos indicados na tela;\n'
                  '3) Em  seu perfil, estarão as obras pendentes de devolução;\n'
                  '4) selecione os livros que deseja renovar o empréstimo e clique sobre o botão “Renovar”.\n'),
              TextButton.icon(
                icon: Icon(Icons.link),
                label: Text('Link para o Pergamum'),
              onPressed: () => setState(() {
                _launchInBrowser(_url);
              }
              ),)
            ],
          ),
        ),
      ),
    );;
  }
}