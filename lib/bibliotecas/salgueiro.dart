import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class salgueiro extends StatefulWidget {
  const salgueiro({Key? key}) : super(key: key);

  @override
  State<salgueiro> createState() => _salgueiroState();
}
class _salgueiroState extends State<salgueiro> {

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
          backgroundColor: Colors.blue[400]),
      body:SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
        children: [
          Text(
              'Biblioteca Campus Juazeiro\n',
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
                  'imagem/salgueiro.png'
                ),
            ),

            Text(
              '\nEndereço',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),    
            Text(
              'Rua Antônio Figueira, 134, Nossa Senhora das Graças. Salgueiro-PE, CEP: 56000-000',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),

            Text(
              '\nE-mail',
              textAlign: TextAlign.center,
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
              'biblioteca.salgueiro@univasf.edu.br',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[400]),
            ),
            onPressed: () => setState(() {
              launchExternalWebsite("mailto:biblioteca.salgueiro@univasf.edu.br");
            }),
          ),



        ],
      ),)

    );;
  }
}
