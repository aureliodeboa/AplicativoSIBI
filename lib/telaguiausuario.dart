import 'package:flutter/material.dart';
import 'package:sibi/menulateral.dart';
import 'package:sibi/telabiblioteca.dart';

class telaguiausuario extends StatefulWidget {
  const telaguiausuario({Key? key}) : super(key: key);
  @override
  State<telaguiausuario> createState() => _telaguiausuarioState();
}

class _telaguiausuarioState extends State<telaguiausuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Guia do Usuário'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: [
                Text('Empréstimo de Materiais',
                    style: TextStyle(
                        color: Color.fromARGB(255, 253, 152, 2),
                        fontSize: 25,
                        fontWeight: FontWeight.w700)),
                Text(
                    "O prazo de empréstimo domiciliar varia de acordo com a categoria do usuário\n ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Image.asset('imagem/prazos.png', width: 350, height: 300),
                Text(
                    "\n As obras de consulta local poderão ser retiradas para empréstimo especial por um período de 02 (duas) horas.\n ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text(
                    "\n OBS: No caso da Biblioteca do Campus Ciências Agrárias, esse prazo se estende para 04 (quatro) horas.\n ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text(
                    "\n As obras de consulta local poderão ser retiradas para empréstimo especial na véspera de feriado ou fim de semana,"
                    " quatro horas antes do encerramento do expediente, com devolução para o primeiro dia útil,"
                    "até uma hora após o inicio do expediente da Biblioteca. \n"
                    "\n São consideradas obras de consulta o exemplar número 01 (um) "
                    "de cada título, identificados também através de fita vermelha,"
                    " fixada na lombada da obra. Não será realizado empréstimo de dois exemplares"
                    " da mesma obra para o mesmo usuário.\n ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text(' Renovação ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 253, 152, 2),
                        fontSize: 25,
                        fontWeight: FontWeight.w700)),
                Text(
                    "\n O material poderá ser renovado por até 02 (duas) vezes no balcão e"
                    " atendimento ou via internet  pelo Pergamum, que você pode consultar neste aplicativo  indo no menu e clicando em renovação."
                    " Após esse número de renovações, o material deverá ser devolvido à "
                    "biblioteca e solicitado novo empréstimo. \n ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text('Devolução de materias',
                    style: TextStyle(
                        color: Color.fromARGB(255, 253, 152, 2),
                        fontSize: 25,
                        fontWeight: FontWeight.w700)),
                Text(
                    "\n A devolução do material deverá ser feita na data prevista, podendo ser efetuada por "
                    "qualquer pessoa. Caso o usuário não respeite o prazo de devolução do material sob sua"
                    " responsabilidade ficará suspenso do direito de QUALQUER empréstimo \n ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text('Reserva',
                    style: TextStyle(
                        color: Color.fromARGB(255, 253, 152, 2),
                        fontSize: 25,
                        fontWeight: FontWeight.w700)),
                Text(
                    "\n A reserva de um material só é possível se todos os exemplares com exceção do de consulta estiverem emprestados.\n \n  As reservas de material deverão ser feitas pelo Pergamun, "
                    "nesse aplicativo também é possivel fazer a reserva clicando em “ Reserva e Renovação de Livros ”, ou pelo site www.biblioteca.univasf.edu.br .\n \n A reserva é nominal, obedecendo à ordem cronológica de solicitações. A obra em reserva estará disponível pelo prazo de 24h (vinte e quatro horas). Após este período a obra será liberada automaticamente, para o usuário seguinte. \n ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text('Responsabilidades dos usuários ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 253, 152, 2),
                        fontSize: 25,
                        fontWeight: FontWeight.w700)),
                Text(
                    "\n• Responder pela guarda, conservação e uso do material emprestado em seu nome\n"
                    " \n• Conhecer as normas da biblioteca\n"
                    "\n• Usar o salão de leitura unicamente para o fim a ele proposto: leitura e estudo\n "
                    "\n• Zelar pela integridade das obras e do mobiliário, visando a sua preservação\n"
                    "\n• Respeitar o horário de funcionamento da biblioteca\n "
                    "\n• Devolver o material da Biblioteca dentro dos prazos estabelecidos\n "
                    "\n• Manter atualizado o cadastro de dados pessoais \n"
                    "\n• Manter sua senha em sigilo, a qual é pessoal e intransferível\n"
                    "\n• Solicitar e aguardar a devolução do material, ao entrar na biblioteca \n"
                    "\n• Não entrar na biblioteca com bolsas, mochilas, pastas, sacolas e pacotes \n"
                    "\n• Devolver a chave do guarda-volumes ao atendente do balcão \n"
                    "\n• Desligar o aparelho celular ou deixá-lo no modo silencioso ao entrar na biblioteca \n"
                    "\n• Não entrar na biblioteca portando ou consumindo alimentos ou bebidas\n "
                    "\n• Não fumar nas dependências da biblioteca\n"
                    "\n• Não entrar na biblioteca usando jaleco\n"
                    "\n• Não adentrar na biblioteca portando equipamentos sonoros que prejudiquem a Pesquisa/estudo de outros usuários\n",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
