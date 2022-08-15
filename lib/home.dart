import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sibi/telabiblioteca.dart';
import 'package:sibi/teladepesquisa.dart';
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
                 mainAxisAlignment: MainAxisAlignment
                     .spaceBetween, // centraliza para ocupar so o tamanho necessario
                 mainAxisSize: MainAxisSize.min,

                 children: [


                   ElevatedButton(onPressed: (){}, child: Text('Guia Do Usuario'),style: ButtonStyle(
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

                   ElevatedButton(onPressed: (){}, child: Text('Como Consultar o Pergamun?'),style: ButtonStyle(
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

                   ElevatedButton(onPressed: (){}, child: Text('Como Localizar Os livros nas estantes'),style: ButtonStyle(
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

                   ElevatedButton(onPressed: (){}, child: Text('Tutoriais'),style: ButtonStyle(
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

                   ElevatedButton(onPressed: (){}, child: Text('Como Fazer uma reserva de um livro?'),style: ButtonStyle(
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

                   ElevatedButton(onPressed: (){}, child: Text('Carta de doação'),style: ButtonStyle(
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

                   ElevatedButton(onPressed: (){}, child: Text('Setores'),style: ButtonStyle(
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
            teladepesquisa(),
            telainicial(),
            telabiblioteca(),

          ],
        ),
        bottomNavigationBar:
        BottomNavigationBar(  selectedFontSize: 0, iconSize: 35, backgroundColor: Colors.blue[400],
            currentIndex: _opcaoselecionada,
            onTap: (opcao){
            setState(() {
            print('clicou $opcao');
            _opcaoselecionada=opcao;
          });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(
                      color: Colors.white,
                      Icons.search_outlined),
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






        /*bottomNavigationBar: NavigationBar(
        height: 45,
        backgroundColor: Colors.blue[400],
        destinations: [

          NavigationDestination(icon: Icon( color: Colors.white,Icons.search_outlined),selectedIcon:Icon(color: Colors.white,Icons.search) , label: ''),
          NavigationDestination(icon: Icon(color: Colors.white,Icons.home_outlined),selectedIcon:Icon(color: Colors.white,Icons.home) , label: ''),
          NavigationDestination(icon: Icon(color: Colors.white,Icons.location_on_outlined),selectedIcon:Icon(color: Colors.white,Icons.location_on) ,label:''),

        ],
      ),*/

      );

  }
}
