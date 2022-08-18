import 'package:flutter/material.dart';

class telabiblioteca extends StatefulWidget {
  const telabiblioteca({Key? key}) : super(key: key);

  @override
  State<telabiblioteca> createState() => _telabibliotecaState();
}

class _telabibliotecaState extends State<telabiblioteca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.account_balance), Text(' Petrolina',),],),
              style:ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states){
                  return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                }), // Muda as Bordas
                fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                  return Size(400, 60);
                }

                ), //tamanho
                backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.grey;
                  }
                }) //cor de fundo
            ), ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.account_balance), Text(' Juazeiro',),],),style:ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states){
                  return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                }), // Muda as Bordas
                fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                  return Size(400, 60);
                }

                ), //tamanho
                backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.grey;
                  }
                }) //cor de fundo
            ), ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.account_balance), Text(' Biblioteca Espaço Plural',),],),style:ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states){
                  return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                }), // Muda as Bordas
                fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                  return Size(400, 60);
                }

                ), //tamanho
                backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.grey;
                  }
                }) //cor de fundo
            ), ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.account_balance), Text(' Senhor do Bonfim',),],),style:ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states){
                  return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                }), // Muda as Bordas
                fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                  return Size(400, 60);
                }

                ), //tamanho
                backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.grey;
                  }
                }) //cor de fundo
            ), ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.account_balance), Text(' Paulo Afonso',),],),style:ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states){
                  return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                }), // Muda as Bordas
                fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                  return Size(400, 60);
                }

                ), //tamanho
                backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.grey;
                  }
                }) //cor de fundo
            ), ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.account_balance), Text(' Salgueiro',),],),style:ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states){
                  return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                }), // Muda as Bordas
                fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                  return Size(400, 60);
                }

                ), //tamanho
                backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.grey;
                  }
                }) //cor de fundo
            ), ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.account_balance), Text(' Serra da Capivara',),],),style:ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states){
                  return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                }), // Muda as Bordas
                fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                  return Size(400, 60);
                }

                ), //tamanho
                backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.grey;
                  }
                }) //cor de fundo
            ), ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Row(children: [ Icon(Icons.account_balance), Text(' Ciências Agrárias',),],),style:ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states){
                  return RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), );
                }), // Muda as Bordas
                fixedSize: MaterialStateProperty.resolveWith<Size?>((states){
                  return Size(400, 60);
                }

                ), //tamanho
                backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
                  if(states.contains(MaterialState.pressed)){
                    return Colors.grey;
                  }
                }) //cor de fundo
            ), ),

          ],
        ),
      ),
    );
  }
}
