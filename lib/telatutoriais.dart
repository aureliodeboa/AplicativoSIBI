import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class telatutoriais extends StatefulWidget {
  const telatutoriais({Key? key}) : super(key: key);

  @override
  State<telatutoriais> createState() => _telatutoriaisState();
}

class _telatutoriaisState extends State<telatutoriais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],title: Text('Tutoriais')

      ),
      body: SingleChildScrollView(
        child: Center(

          child:Container(
            padding:  EdgeInsets.fromLTRB(20, 20, 20, 20),
            child:  Column(
              children: [

                Text('Emissão da declaração de isenção de débito "nada consta"\n ',style: TextStyle(color: Colors.amber[700], fontSize: 20,)),
                //Text('O video a seguir mostra como conseguir o "nada consta" :',style: TextStyle(color: Colors.black, fontSize: 18,)),

                YoutubePlayer(controller: YoutubePlayerController(
                    initialVideoId: 'iLDxNersLDQ',
                    flags: YoutubePlayerFlags(
                      autoPlay: false,
                      mute:  false,
                      showLiveFullscreenButton: true,
                      hideControls: false,

                    )),),
                SizedBox(width: 30,height: 30,),

                Text('Como fazer a renovação de um livro da biblioteca on-line? \n',style: TextStyle(color: Colors.amber[700], fontSize: 20,)),

                YoutubePlayer(controller: YoutubePlayerController(
                    initialVideoId: 'WsF1_gYREXc',
                    flags: YoutubePlayerFlags(
                      autoPlay: false,
                      mute:  false,
                      showLiveFullscreenButton: true,
                      hideControls: false,
                    )),),
                SizedBox(width: 30,height: 30,),

                Text('Como ter acesso as normas ABNT pelo catalgo Pergamun? \n',style: TextStyle(color: Colors.amber[700], fontSize: 20,)),
                //Text('Siga as instruções do video asseguir:',style: TextStyle(color: Colors.black, fontSize: 18,)),
                YoutubePlayer(controller: YoutubePlayerController(
                  initialVideoId: 'ix07V_Xfc1E',

                  flags: YoutubePlayerFlags(
                    autoPlay: false,
                    mute:  false,
                    showLiveFullscreenButton: true,
                    hideControls: false,

                  ),
                ),),
                SizedBox(width: 30,height: 30,),

                Text('Como fazer Consultas no Pergamum? \n',style: TextStyle(color: Colors.amber[700], fontSize: 20,)),
               // Text('Siga as instruções do video asseguir:',style: TextStyle(color: Colors.black, fontSize: 18,)),
                YoutubePlayer(controller: YoutubePlayerController(
                    initialVideoId: 'cTIByTdQQh0',
                    flags: YoutubePlayerFlags(
                      autoPlay: false,
                      mute:  false,
                      showLiveFullscreenButton: true,
                      hideControls: false,
                    )),),
                SizedBox(width: 30,height: 30,),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
