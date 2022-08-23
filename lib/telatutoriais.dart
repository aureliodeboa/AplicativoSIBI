import 'package:flutter/material.dart';
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
        backgroundColor: Colors.blue[400],

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Text('Tela tutoriais'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
