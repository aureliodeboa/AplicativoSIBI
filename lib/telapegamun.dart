import 'package:flutter/material.dart';
class telapergamun extends StatefulWidget {
  const telapergamun({Key? key}) : super(key: key);

  @override
  State<telapergamun> createState() => _telapergamunState();
}

class _telapergamunState extends State<telapergamun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        
      ),
      body: SingleChildScrollView(
        child: Center(
          //heightFactor: 2,
          child: Column(

            children: [
              Container(
                child: Text('\n A Cartilha Técnicas de Utilização do Sistema Pergamum'
                    ' traz a descrição das formas de pesquisa e acesso às obras do catálogo online das bibliotecas '
                    'e demais serviços disponíveis aos usuários via sistema Pergamum.\n'
                    '\n Link: https://portais.univasf.edu.br/sibi/cartilha-tecnicas-de-utilizacao-do-sistema-pergamum.pdf'),


              ),
              Text('Como fazer uma pesquisa básica?'),
              Text('Para realizar uma pesquisa básica em nosso catálogo execute os seguintes passos: \n '
                  '1) acesse o catálogo da biblioteca clicando sobre a aba "Consulta ao Acervo", localizada no alto dessa tela;\n'
                  '2) na tela principal do sistema, clique sobre a caixa de “Pesquisa Geral”;\n'
                  '3) Defina os parâmetro para os filtros de pesquisa e digite na caixa de texto a palavra chave desejada;\n'
                  '4) clique sobre o título da obra desejada; \n'
                  '5) anote o número de chamada para localizar o documento no acervo;\n'
                  '6) Para consultar a quantidade e a disponibilidade de exemplares, clique em “exemplares”.\n'),

            ],
          ),
        ),
      ),
    );
  }
}
