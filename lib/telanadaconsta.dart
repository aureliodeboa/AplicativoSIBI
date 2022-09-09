import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class telanadaconsta extends StatefulWidget {
  const telanadaconsta({Key? key}) : super(key: key);

  @override
  State<telanadaconsta> createState() => _telanadaconstaState();
}

class _telanadaconstaState extends State<telanadaconsta> {
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
          backgroundColor: Colors.blue, title: Text("Declaração Nada Consta")),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(
          child: Column(
            children: [
              Text(
                  "\n Para que o discente conclua a graduação  na UNIVASF e receba o tão esperado diploma, é necessário emitir a declaração de isenção de débito “ nada consta “ "
                  "a seguir é demonstrado o passo a passo para emitir: \n ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text(
                  "\n• Primeiro deve-se acessar o Sistema Pergamum, disponível no link abaixo ou pelo Portal SIBI",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text(
                  "\n• Logar-se com seu CPF e a senha da biblioteca, as mesmas credenciais usadas para pegar um livro emprestado na biblioteca \n"
                  "\n• Ir na aba empréstimos e clicar na aba Declaração nada Consta como mostra a imagem a seguir: \n",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Image.asset(
                'imagem/nadaconsta.jpg',
                width: 350,
                height: 300,
              ),
              Text(
                  "\n•Logo após será aberto uma  notificação para confirmar, como mostra a próxima imagem:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Image.asset('imagem/nadaconsta2.png', width: 350, height: 300),
              Text(
                  "\n• Logo após será emitido o “ nada consta ”                           \n",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text(
                  "\n Caso não tenha ficado claro  veja o tutorial a seguir :        \n",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              YoutubePlayer(
                controller: YoutubePlayerController(
                    initialVideoId: 'iLDxNersLDQ',
                    flags: YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                      showLiveFullscreenButton: true,
                      hideControls: false,
                    )),
              ),
              TextButton.icon(
                icon: Container(
                  child: Image.asset(
                    'imagem/icones/pergamun.png',
                    width: 25,
                    color: Color.fromARGB(255, 253, 152, 2),
                  ),
                ),
                label: Text(
                        ' Acesse o pergamum clicando aqui',
                        style: 
                          TextStyle(
                            color: Color.fromARGB(255, 253, 152, 2),
                            fontSize: 18,
                          )
                      ),
                
                onPressed: () => setState(() {
                  launchExternalWebsite(
                      "https://biblioteca.univasf.edu.br/pergamum/biblioteca_s/php/login_usu.php?flag=index.php");
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
