import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class teladocumentos extends StatefulWidget {
  const teladocumentos({Key? key}) : super(key: key);

  @override
  State<teladocumentos> createState() => _teladocumentosState();
}

class _teladocumentosState extends State<teladocumentos> {
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
      appBar: AppBar(title:Text('Documentos SIBI'),backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Center(

          child: Column(

            children: [
              //SizedBox(height: 20),
              Text("A PRESENTE SECÇÃO REÚNE TODOS OS DOCUMENTOS IMPORTANTES DISPONÍVEIS NO SIBI\n",style: TextStyle(fontSize: 18)),
              Text(" \n Regulamento -Utilização, circulação e política do desenvolvimento do acervo."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text(' Regulamento '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/regulamento-sibi.pdf");

                }
                ),),
              SizedBox(height: 20),


              Text("Plano de Contingência SIBI - Tem o objetivo de identificar possíveis riscos ao acervo, pessoal, estrutura física e serviços prestados pelo Sistema de Bibliotecas, indicando medidas para prevenir e conter casos de intercorrências."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Plano de Contingência SIBI '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/plano-de-contingencia-sibi.pdf");

                }
                ),),
              SizedBox(height: 20),

              Text("Guia de fontes de informação digitais - Traz informações sobre editoras que oferecem e-books para download gratuito e conteúdos de bases de dados, normas técnicas, bibliotecas digitais e periódicos de acesso aberto."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Guia de fontes de informação digitais'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/guia-de-fontes-de-informacao-digitais");

                }
                ),),
              SizedBox(height: 20),

              Text("Cartilha - Técnicas de Utilização do Sistema Pergamum - Descrição das formas de pesquisa e acesso às obras do catálogo online das bibliotecas e demais serviços disponíveis aos usuários via sistema Pergamum."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Cartilha'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/cartilha-tecnicas-de-utilizacao-do-sistema-pergamum.pdf");

                }
                ),),
              SizedBox(height: 20),

              Text("Instruções Gerais - Utilização das salas de estudo em grupo para todas as bibliotecas."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Instruções Gerais '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/instrucoes-para-uso-das-salas-de-estudo-em-grupo.pdf");

                }
                ),),
              SizedBox(height: 20),

              Text("Carta de Doação - O SIBI recebe doações de material bibliográfico que sejam de interesse para a comunidade acadêmica. A incorporação ao acervo de materiais doados segue os critérios da Política de Desenvolvimento de Acervo. Ao SIBI resguarda-se a autonomia para selecionar o material doado e incorporá-lo ao acervo ou encaminhá-lo a outras instituições. "),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/doc.png',width: 20 ),),
                label: Text('Carta de Doação doc'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/informacao-ao-usuario/carta-de-doacao.doc/@@download/file/CARTA%20DE%20DOA%C3%87%C3%83O.doc");

                }
                ),),
              SizedBox(height: 20),

              Text("Carta de Serviço SIBI - Diversos setores da Univasf estiveram empenhados em elaborar suas cartas de serviço, em metodologia conduzida pela Diretoria de Desenvolvimento Institucional - DDI, da Pró-reitoria de Planejamento e Desenvolvimento Institucional - Propladi. Esse processo envolveu, dentre outras etapas, a constituição de equipes setoriais de trabalho, a sistematização de informações referentes aos serviços executados, a análise de normas de procedimentos, a redação das versões iniciais dos documentos setoriais, a submissão desses últimos ao Comitê de Aprovação e Divulgação, a realização de eventuais ajustes e a diagramação das versões finais. "),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700],),),
                label: Text('Carta de Serviço '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/informacao-ao-usuario/carta-de-servico-sibi.pdf/@@download/file/carta_de_servicos_sibi.pdf");

                }
                ),),
              SizedBox(height: 20),

              Text("Como localizar os livros nas estantes- Para melhor uso do acervo das Bibliotecas do SIBI, disponibilizamos instruções de como localizar o material nas prateleiras. É fácil, simples e útil."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Como localizar os livros nas estantes '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/informacao-ao-usuario/como-localizar-os-livros-nas-estantes.pdf/@@download/file/Como%20localizar%20os%20Livros%20nas%20estantes.pdf");

                }
                ),),
              SizedBox(height: 20),

              Text("Acessibilidade e inclusão nas bibliotecas - Ações e projetos desenvolvidos pelo Sistema de Bibliotecas para possibilitar acessibilidade aos seus usuários."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Acessibilidade e inclusão nas bibliotecas'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/acessibilidade-e-inclusao-nas-bibliotecas");

                }
                ),),
              SizedBox(height: 20),

              Text("Atividades remotas do SIBI UNIVASF na pandemia Covid-19 - Organização administrativa dos serviços prestados pelo SIBI, bem como as adequações realizadas para possibilitar a continuidade da prestação destes, de forma remota, durante a pandemia da Covid-19."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Atividades remotas do SIBI UNIVASF na pandemia Covid-19'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/atividades-remotas-do-sibi-univasf-na-pandemia-covid-19");

                }
                ),),
              SizedBox(height: 20),
              
              Text("Protocolo de segurança para as Bibliotecas da UNIVASF (COVID-19) - Adoção de medidas de prevenção/higienização e restrição quanto ao funcionamento total da biblioteca e sua utilização por parte dos usuários, afim de garantir a segurança dos profissionais da Univasf e da comunidade interna e externa que utilizam os serviços das bibliotecas."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Protocolo de segurança para as Bibliotecas da UNIVASF (COVID-19)'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/protocolo-de-seguranca-para-as-bibliotecas-da-univasf_covid-19");

                }
                ),),
              SizedBox(height: 20),

              Text("Instruções para a Biblioteca Campus Petrolina (SEDE) - Utilização das salas de cabines individuais e da sala de estudo em grupo."),
              TextButton.icon(
                icon:Container(child: Image.asset('imagem/icones/pdf.png',width: 20,color: Colors.red[700], ),),
                label: Text('Instruções para a Biblioteca Campus Petrolina (SEDE)'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi/normas-especificas-de-utilizacao-das-salas-de-cabines-individuais-e-sala-de-estudo-da-biblioteca-central");

                }
                ),),
              SizedBox(height: 20),


            ],
          ),
        ),
      ) ,
    );
  }
}
