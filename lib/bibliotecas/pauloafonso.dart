import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class pauloafonso extends StatefulWidget {
  const pauloafonso({Key? key}) : super(key: key);

  @override
  State<pauloafonso> createState() => _pauloafonsoState();
}

class _pauloafonsoState extends State<pauloafonso> {
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
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Text('Biblioteca Campus Paulo Afonso\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: Colors.amber,
                  color: Color.fromARGB(255, 253, 152, 2),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            Container(
              child: Image.asset('imagem/pauloafonso.png'),
            ),

            SizedBox(height: 20),
            Text('\nEndereço',
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )),
            Text(
                'Avenida da Amizade, s/n Bairro: Sal Torrado, Paulo Afonso-BA, CEP: 48607-190',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            Text('\n Telefone ',
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )),
            TextButton.icon(
              icon: Container(
                child:  Icon(Icons.call_outlined, size: 30.0),
              ),
              label: Text(
                ' (75) 3282-3459',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[400]),
              ),
              onPressed: () => setState(() {
                launchExternalWebsite("tel:07532823459");
              }),
            ),
            Text('\nE-mail',
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )),
            TextButton.icon(
              icon: Container(
                child:  Icon(Icons.email_outlined, size: 25.0,color:  Color.fromARGB(255, 253, 152, 2)),
              ),
              label: Text(
                ' biblioteca.paf@univasf.edu.br',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[400]),
              ),
              onPressed: () => setState(() {
                launchExternalWebsite("mailto:biblioteca.paf@univasf.edu.br");
              }),
            ),


          ],
        ),
      ),
    );
  }
}
