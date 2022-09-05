import 'package:flutter/material.dart';
class telapetrolina extends StatefulWidget {
  const telapetrolina({Key? key}) : super(key: key);

  @override
  State<telapetrolina> createState() => _telapetrolinaState();
}

class _telapetrolinaState extends State<telapetrolina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child:  Column(
          children: [
          Text('Biblioteca Campus Petrolina',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber[700], fontSize: 30,)),
          Container(child: Image.asset('imagem/campuspetrolina.png'),),
          Text('\n Responsável: Ana Paula Lopes da Silva (Bibliotecária - Diretora do SIBI)\n '
              '\n Endereço: Av. José de Sá Maniçoba, s/n, Centro, Petrolina-PE, CEP 56304-917 \n '
              '\n Telefone: (87) 21016889 \n  E-mail: biblioteca@univasf.edu.br \n'
              '\n EquipeSetor de Processamento TécnicoBibliotecária / Setor de Processamento Técnico Adriana Santos Magalhães. \n'
              '\n Setor de Referência e Informação  Bibliotecário / Setor de Referência'' Lucídio Lopes de Alencar. \n'
              '\n Assistente de Apoio ao SIBI  Evani Nogueira Pereira \n '
              '\n Assistente em Administração/ Assistente de Apoio ao SIBI Silvia Regina de Souza Mendes.\n'
              '\n Atendentes:\n  Lis Maria Barros Conceição, Flaviana Coelho Macedo de Brito, Thailyne da Fonseca Clemente,  Ithor Iandersin Garcia de Oliveira Deodato \n'

      , style: TextStyle( fontSize: 15)),
        ],
      ),)

    );
  }
}
