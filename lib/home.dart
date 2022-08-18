import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sibi/telabiblioteca.dart';
import 'package:sibi/teladelinks.dart';
import 'package:sibi/telainicial.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 int _opcaoselecionada=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: Colors.white,

         endDrawer: Drawer(
           backgroundColor: Colors.white,
           child: Center(
             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween, // centraliza para ocupar so o tamanho necessario
                 mainAxisSize: MainAxisSize.min,

                 children: [


                   ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.person_outline), Text(' Guia Do Usuario',),],),style:ButtonStyle(
                       shape: MaterialStateProperty.resolveWith((states){
                         return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                       }), // Muda as Bordas
                       fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                         return Size(300, 60);
                       }

                       ), //tamanho
                       backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                         if(states.contains(MaterialState.pressed)){
                           return Colors.grey;
                         }
                       }) //cor de fundo
                   ), ),
                   SizedBox(height: 20,),

                   ElevatedButton(onPressed: (){}, child: Row(children: [Icon(Icons.search_outlined) ,Text(' Como Consultar o Pergamun?')],),style: ButtonStyle(
                       shape: MaterialStateProperty.resolveWith((states){
                         return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                       }), // Muda as Bordas
                       fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                         return Size(300, 60);
                       }

                       ), //tamanho
                       backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                         if(states.contains(MaterialState.pressed)){
                           return Colors.grey;
                         }
                       }) //cor de fundo
                   ), ),
                   SizedBox(height: 20,),

                   ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.collections_bookmark_outlined),Text(' Como Localizar Os livros nas estantes'),],) ,style: ButtonStyle(
                       shape: MaterialStateProperty.resolveWith((states){
                         return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                       }), // Muda as Bordas
                       fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                         return Size(300, 60);
                       }

                       ), //tamanho
                       backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                         if(states.contains(MaterialState.pressed)){
                           return Colors.grey;
                         }
                       }) //cor de fundo
                   ), ),
                   SizedBox(height: 20,),

                   ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.subscriptions),Text(' Tutoriais')]),style: ButtonStyle(
                       shape: MaterialStateProperty.resolveWith((states){
                         return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                       }), // Muda as Bordas
                       fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                         return Size(300, 60);
                       }

                       ), //tamanho
                       backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                         if(states.contains(MaterialState.pressed)){
                           return Colors.grey;
                         }
                       }) //cor de fundo
                   ), ),
                   SizedBox(height: 20,),

                   ElevatedButton(onPressed: (){}, child: Row(children: [Icon(Icons.touch_app_outlined),Text(' Como Fazer uma reserva de um livro?')],),style: ButtonStyle(
                       shape: MaterialStateProperty.resolveWith((states){
                         return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                       }), // Muda as Bordas
                       fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                         return Size(300, 60);
                       }

                       ), //tamanho
                       backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                         if(states.contains(MaterialState.pressed)){
                           return Colors.grey;
                         }
                       }) //cor de fundo
                   ), ),
                   SizedBox(height: 20,),

                   ElevatedButton(onPressed: (){}, child:Row(children: [Icon(Icons.drafts), Text(' Carta de doação')]),style: ButtonStyle(
                       shape: MaterialStateProperty.resolveWith((states){
                         return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                       }), // Muda as Bordas
                       fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                         return Size(300, 60);
                       }

                       ), //tamanho
                       backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                         if(states.contains(MaterialState.pressed)){
                           return Colors.grey;
                         }
                       }) //cor de fundo
                   ), ),
                   SizedBox(height: 20,),

                   ElevatedButton(onPressed: (){}, child: Row(children: [Icon(Icons.domain_add_outlined),Text(' Setores')],),style: ButtonStyle(
                       shape: MaterialStateProperty.resolveWith((states){
                         return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                       }), // Muda as Bordas
                       fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                         return Size(300, 60);
                       }

                       ), //tamanho
                       backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                         if(states.contains(MaterialState.pressed)){
                           return Colors.grey;
                         }
                       }) //cor de fundo
                   ), ),
                   SizedBox(height: 20,),





                 ],
               ),
             ),
           ),
         )  , // Menu Hambuguer
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: IndexedStack(
          index: _opcaoselecionada,
          children: <Widget>[
            teladelinks(),
            telainicial(),
            telabiblioteca(),

          ],
        ),
        bottomNavigationBar:
        BottomNavigationBar(  selectedFontSize: 0, iconSize: 35, backgroundColor: Colors.blue[400],
            currentIndex: _opcaoselecionada,
            onTap: (opcao){
            setState(() {
            _opcaoselecionada=opcao;
          });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(
                      color: Colors.white,
                      Icons.check_box_outlined),
                  label: ''),

               BottomNavigationBarItem(icon: Icon(
                       color: Colors.white,
                       Icons.home_outlined),
                   label: ''),

          BottomNavigationBarItem(
               icon: Icon(
                  color: Colors.white,
                  Icons.location_on_outlined),
                 label: ''),
        ]),







      );

  }
}
