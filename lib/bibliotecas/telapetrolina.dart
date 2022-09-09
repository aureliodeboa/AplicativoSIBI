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

      appBar: 
        AppBar(
          backgroundColor: Colors.blue[400]
        ),
      body: 
        SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: 
            Column(
              children: [        
                Text(
                  'Biblioteca Campus Petrolina\n',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      // color: Colors.amber,
                      color: Color.fromARGB(255, 253, 152, 2),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                ),
                
                Container(
                  child: 
                    Image.asset(
                      'imagem/campuspetrolina.png'
                    ),
                ),
                
                Text(
                  '\nResponsável',
                  textAlign: TextAlign.left,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),
                Text(
                  'Ana Paula Lopes da Silva (Bibliotecária - Diretora do SIBI)',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),

                Text(
                  '\nEndereço',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),    
                Text(
                  'Av. José de Sá Maniçoba, s/n, Centro, Petrolina-PE, CEP 56304-917',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),
                
                Text(
                  '\nTelefone',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),   
                Text(
                  '(87)2101-6889',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),

                Text(
                  '\nE-mail',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),     
                Text(
                  'biblioteca@univasf.edu.br',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),

                Text(
                  '\nSetor de Processamento Técnico ',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),     
                Text(
                  'Adriana Santos Magalhães (Bibliotecária)',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),

                Text(
                  '\nSetor de Referência e Informação',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),     
                Text(
                  'Lucídio Lopes de Alencar (Bibliotecário)',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),

                Text(
                  '\nAssistente de Apoio ao SIBI',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),     
                Text(
                  'Evani Nogueira Pereira',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),

                Text(
                  '\nAssistente em Administração e Apoio ao SIBI',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),     
                Text(
                  'Silvia Regina de Souza Mendes',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),

                Text(
                  '\nAtendentes',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),     
                Text(
                  'Lis Maria Barros Conceição\n'
                  'Flaviana Coelho Macedo de Brito\n'
                  'Thailyne da Fonseca Clemente\n'
                  'Ithor Iandersin Garcia de Oliveira Deodato',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),

                Text(
                  '\nBiblioteca do Hospital Universitário (HU)',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: 
                    TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                ),     
                Text(
                  'Fabio Oliveira Lima (Bibliotecário)',
                  textAlign: TextAlign.center,
                  style: 
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                ),
              ],
            ),
        )

    );
  }
}
