import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class redesociais extends StatefulWidget {
  const redesociais({Key? key}) : super(key: key);

  @override
  State<redesociais> createState() => _redesociaisState();
}

class _redesociaisState extends State<redesociais> {
  void launchExternalWebsite(String url) async {
    var urlUri= Uri.parse(url);
    if(await canLaunchUrl(urlUri)){
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    }else {
      throw 'could not lanch $urlUri';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(' Redes Sociais '),backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(


        ),
      ) ,
    );;
  }
}
