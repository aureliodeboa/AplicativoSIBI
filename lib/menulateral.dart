import 'package:flutter/material.dart';
class menulateral extends StatefulWidget {
  const menulateral({Key? key}) : super(key: key);

  @override
  State<menulateral> createState() => _menulateralState();
}

class _menulateralState extends State<menulateral> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: Colors.white,
      child: ListView(

        children: [
          UserAccountsDrawerHeader(accountName: Text(''), accountEmail: Text('')
            , decoration:BoxDecoration( image: DecorationImage(  image:  NetworkImage('https://biblioteca.univasf.edu.br/pergamum/img/logo_empresa.jpg'),),) ,),
          Center(

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
        ],
      ),
    );
  }
}
