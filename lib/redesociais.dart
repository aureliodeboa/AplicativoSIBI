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
          child: Column(
            children: [

              Text("Descrições e links de acesso das atuais redes sociais do Sistema Integrado de Bibliotecas da Univasf:\n",style: TextStyle(fontSize: 18)),

              TextButton.icon(
                icon:Container( child: Image.asset('imagem/icones/instagram.png',width: 25, ),),
                label: Text(' @sibiunivasf '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://www.instagram.com/sibiunivasf/");

                }
                ),),
              Text("Instagram -  \n Descrição: A rede social Instagram SIBI/Univasf (@sibiunivasf) é mais um Serviço de Referência Virtual,"
                  " oferecido pelo SIBI aos seus usuários. Trata-se de uma ferramenta que pode servir como instrumento de marketing e promoção"
                  " das ações da unidade de informação, assim como dos seus produtos e serviços. É ainda um canal de interação direto com os "
                  "usuários, podendo auxiliar na orientação do uso de determinado serviço e esclarecimento de dúvidas. Nesta rede social, "
                  "busca-se conferir uma identidade aos conteúdos diários das publicações, que versam sobre: dicas de pesquisa; normas; serviços prestados pelo SIBI; "
                  "indicações de obras; resgate das ações já implementadas pelo setor, por meio do tbt; treinamentos, por meio de vídeos educativos, entre outros, que tem por"
                  " objetivo instruir os usuários. Avisos e informes gerais são publicados,"
                  " conforme demanda e necessidade. Através do perfil do SIBI, no Instagram, é possível compartilhar "
                  "publicações dos perfis da referida rede socialde outros setores da Univasf, bem como de outras "
                  "instituições, colaborando com a comunicação institucional e estabelecendo vínculos colaborativos"
                  " com outras unidades de informação."),
              SizedBox(height: 20),

              TextButton.icon(
                icon:Container( child: Image.asset('imagem/icones/youtube.png',width: 25,color:Colors.red ),),
                label: Text(' Canal no Youtube '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://www.youtube.com/channel/UCqS2P-iF3rPHPEMbd4RSk0A");
                }
                ),),
              Text("YouTube -\nDescrição: Através da plataforma do YouTube, o SIBI Univasf"
                  " compartilha conteúdo audiovisual produzido pelopróprio setor, como a série"
                  " de vídeos treinamentos e o Glossário do SIBI, e outros materiais provenientes"
                  " de setores colaboradores, como o Núcleo de Acessibilidade e"
                  " Inclusão da Univasf, que produz os vídeos do SIBI em Libras."
                  " O canal do YouTube também é utilizado para a transmissão de "
                  "eventos remotos do SIBI, como palestras e minicursos."),
              SizedBox(height: 20),

              TextButton.icon(
                icon:Container( child: Image.asset('imagem/icones/facebook.png',width: 25),),
                label: Text(' Facebook SIBI'),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://www.facebook.com/sibiunivasf/");
                }
                ),),
              Text("Facebook -\nDescrição: O perfil do SIBI no Facebook é uma ferramenta"
                  "de disseminação de informação, comunicação e interação"
                  "com os usuários, contribuindo para divulgar os serviços e"
                  "ações do setor. Atualmente, as publicações estão"
                  "interligadas com o perfil do Instagram e tratam de temas"
                  "relacionados à pesquisa científica; uso de bases de dados;"
                  "escrita; metodologia; indicações de obras; normalização"
                  "de trabalhos acadêmicos, entre outros."),
              SizedBox(height: 20),

              TextButton.icon(
                icon:Container( child: Image.asset('imagem/icones/portal.png',width: 25,color: Colors.amber[700] ),),
                label: Text(' Portal SIBI '),
                onPressed: () => setState(() {
                  launchExternalWebsite("https://portais.univasf.edu.br/sibi");

                }
                ),),
              Text("Site institucional-\nDescrição: No site institucional do Sistema Integrado de"
                  "Bibliotecas da Univasf estão disponíveis mais informações"
                  "sobre o SIBI, sua estrutura organizacional, seus documentos"
                  "norteadores e suas bibliotecas. É possível encontrar os"
                  "serviços oferecidos à comunidade acadêmica e externa,"
                  "descritos em Carta de Serviços do SIBI, entre eles:"
                  "solicitação de registro de ISBN; solicitação de ficha"
                  "catalográfica e serviço de comutação bibliográfica. Há"
                  "também informações diversas de interesse dos usuários"
                  "como, por exemplo, o Guia do Usuário, tutoriais e as"
                  "principais normas para a elaboração de trabalhos"
                  "acadêmicos. Além disso, a página conta com os contatos"
                  "dos responsáveis pela biblioteca de cada campus da"
                  "instituição e links para acesso ao Portal de Periódicos da"
                  "Capes; ABNT Coleção; Biblioteca Digital Brasileira de"
                  "Teses e Dissertações (BDTD); Scielo Livros, entre outras fontes de informação"),
              SizedBox(height: 20),




            ],
          ),
        ),
      ) ,
    );;
  }
}
