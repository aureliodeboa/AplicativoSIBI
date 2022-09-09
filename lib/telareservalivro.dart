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
        title: Text('Reserva  e  Renovaçao de Livros'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            children: [
              Text(
                '\n Para realizar reserva de exemplares, execute os seguintes passos:\n ',
                style: TextStyle(
                  color: Colors.amber[700],
                  fontSize: 16,
                ),
              ),
              Image.asset('imagem/pergamumobile.png', width: 250, height: 300),
              Text(
                  '\n• Acesse o Pergamum Mobile clicando no ultimo link dessa pagina "Pergamum Mobile"\n'
                  '\n• Na tela inicial do sistema, clique sobre a caixa de “Consulta ao Acervo”;\n'
                  '\n• Defina os parâmetros para os filtros de pesquisa e digite na caixa de texto a palavra chave desejada;\n'
                  '\n• Clique sobre o título da obra desejada;\n'
                  '\n• Clique sobre a opção “Exemplares/Reserva”;\n'
                  '\n• Na tela “Dados do usuário para reserva” digite seu CPF e senha que utiliza para acessar a biblioteca  e clique sobre o botão “Confirmar” para concluir a reserva.\n'),
              Text(
                '\nPara realizar renovação de empréstimo de exemplares a partir do sistema Pergamum execute os seguintes passos:\n',
                style: TextStyle(
                  color: Colors.amber[700],
                  fontSize: 16,
                ),
              ),
              Text('\n• Clique no link disponivel no fim desta página\n'
                  '\n• Clique no Botão "Renovar" \n'
                  '\n• Logue com seu CPF e a senha que é o código cadastrado pelo Usuário no balcão de atendimento da Biblioteca \n'
                  '\n• Em  seu perfil, estarão as obras pendentes de devolução;\n'
                  '\n• Selecione os livros que deseja renovar o empréstimo e clique sobre o botão “ Renovar ”.\n'),
              TextButton.icon(
                icon: Container(
                    child: Image.asset(
                  'imagem/icones/pergamun.png',
                  width: 30,
                  color: Colors.amber[700],
                )),
                label: Text(
                  'Pergamum Mobile',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
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
    ;
  }
}
