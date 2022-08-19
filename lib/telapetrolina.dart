import 'package:flutter/material.dart';
import 'menulateral.dart';
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
      endDrawer: menulateral(),
      body: Column(
        children: [
          Text('Biblioteca Campus Petrolina',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/campuspetrolina.png'),),
          Text('Responsável: Ana Paula Lopes da Silva (Bibliotecária - Diretora do SIBI) '
              'Endereço: Av. José de Sá Maniçoba, s/n, Centro, Petrolina-PE, CEP 56304-917 '
              'Telefone: (87) 21016889  E-mail: biblioteca@univasf.edu.br '
              'EquipeSetor de Processamento TécnicoBibliotecária / Setor de Processamento Técnico Adriana Santos Magalhães. '
              'Setor de Referência e Informação  Bibliotecário / Setor de Referência'' Lucídio Lopes de Alencar. '
              ' Assistente de Apoio ao SIBI  Evani Nogueira Pereira '
              'Assistente em Administração/ Assistente de Apoio ao SIBI Silvia Regina de Souza Mendes.'
              'Atendentes:  Lis Maria Barros Conceição, Flaviana Coelho Macedo de Brito, Thailyne da Fonseca Clemente,  Ithor Iandersin Garcia de Oliveira Deodato'

      , style: TextStyle( fontSize: 15)),
        ],
      ),

    );
  }
}
