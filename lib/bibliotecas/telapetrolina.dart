import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
class telapetrolina extends StatefulWidget {
  const telapetrolina({Key? key}) : super(key: key);

  @override
  State<telapetrolina> createState() => _telapetrolinaState();
}

class _telapetrolinaState extends State<telapetrolina> {

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
                TextButton.icon(
                  icon: Container(
                    child:  Icon(Icons.call_outlined, size: 25.0,color: Colors.blue[400],),
                  ),
                  label: Text(
                    '(87)2101-6889',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[400]),
                  ),
                  onPressed: () => setState(() {
                    launchExternalWebsite("tel:08721016889");
                  }),
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
                TextButton.icon(
                  icon: Container(
                    child:  Icon(Icons.email_outlined, size: 25.0,color:  Color.fromARGB(255, 253, 152, 2)),
                  ),
                  label: Text(
                    'biblioteca@univasf.edu.br',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[400]),
                  ),
                  onPressed: () => setState(() {
                    launchExternalWebsite("mailto:biblioteca@univasf.edu.br");
                  }),
                ),



              ],
            ),
        )

    );
  }
}
