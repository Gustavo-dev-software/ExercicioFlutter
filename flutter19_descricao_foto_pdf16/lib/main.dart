import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          "Álbum",
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: ListView(
          children: <Widget>[
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Descricao(
                          titulo: 'New York',
                          tituloTexto: 'New York, EUA',
                          texto:
                              'Nova York é a maior cidade dos Estados Unidos. É um dos grandes centros culturais e empresariais do mundo. Seu ritmo acelerado e sua atividade constante lhe renderam o apelido de “cidade que nunca dorme”.'),
                    ),
                  ),
                  child: Image.network(
                    "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Descricao(
                        titulo: 'Gran Kenoi',
                        tituloTexto: 'Gran Kenoi, EUA',
                        texto:
                            'O Grand Canyon é uma falha que possui 445 km de comprimento, aproximadamente 1,5 km de profundidade e uma largura que pode variar entre 200 metros a 30 km. No mundo existe uma série de paisagens naturais de rara beleza, porém uma se destaca em relação às demais, o Grand Canyon, que é um acidente geológico que permitiu o surgimento de uma falha na superfície da região, possui 445 km de comprimento, aproximadamente 1,5 km de profundidade e uma largura que pode variar de 200 metros a 30 km. O Grand Canyon é uma das sete maravilhas do mundo natural. Essa surpreendente paisagem foi esculpida por meio de processos erosivos, motivados, principalmente, pelas águas do rio Colorado, além da neve, da chuva e do vento, chamados de agentes externos modeladores do relevo. É repleto de precipícios, montes íngremes, despenhadeiros e pináculos. Além de apresentar diversas cores em sua composição, como vermelho, ouro, rosa, verde, ferrugem, laranja, violeta, dentre outras. O Grand Canyon está localizado ao norte do Estado norte-americano do Arizona, no Grand Canyon National Park, local que atrai cerca de 5 milhões de turistas ao ano, oriundos de diversas partes do mundo.'),
                  ),
                ),
                child: Image.network(
                  "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Descricao(
                        titulo: 'Maldivas',
                        tituloTexto: 'Ilhas Maldivas',
                        texto:
                            'Belas praias de areia branca, águas cristalinas e bangalôs perfeitos para casais em lua-de-mel são alguns dos atributos das Ilhas Maldivas.O país é famoso por proporcionar uma viagem luxuosa e repleta de ostentação, mas não pense que isso está relacionado somente aos gastos.Conhecer as Ilhas Maldivas será uma experiência suprema, pois suas belezas naturais são únicas em todo mundo.O país é um dos destinos preferidos dos ricos, famosos e, também, para quem busca privacidade e paisagens para fotografar. Qualquer que seja o cenário, não há necessidade de filtro.A vegetação e vida selvagem em terra são limitadas; por outro lado, há uma rica vida marinha, seja em seu valor biológico, ou comercial.As Ilhas Maldivas já foram colônia portuguesa, holandesa e britânica, tendo sua independência em 1965 e a república decretada em 1968.É o país menos populoso e, também, o menor país da Ásia. O arquipélago é composto por 1.196 ilhas, das quais apenas 203 são habitadasAlém disso, o recorde mundial de país com a altitude mais baixa pertence às Ilhas Maldivas. Seu ponto mais alto é 2,3 m acima do nível do mar, sendo que a média é 1,5 m de altitude.A capital, Malé, está a 90 centímetros do nível do mar e, por lá, vivem 100 mil pessoas. A religião obrigatória no país é o Islã.A pesca ainda é a atividade econômica dominante, principalmente no setor de exportação, seguido pelo acelerado crescimento da indústria do turismo.Junto ao Sri Lanka, é um dos dois únicos países do sul da Ásia com um Índice de Desenvolvimento Humano (IDH) considerado elevado.'),
                  ),
                ),
                child: Image.network(
                  "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Descricao(
                        titulo: 'Mar Vermelho',
                        tituloTexto: 'África/ Ásia',
                        texto:
                            'Com uma área aproximada de 450 mil km2e comprimento de 1900 km, o Mar Vermelho é considerado um golfo (extensa baía) que apresenta grande biodiversidade.Possui uma profundidade média de 500 metros e máxima de 2500 metros. Suas águas tem uma temperatura média de 20°C.Uma das mais importantes atividades econômicas desenvolvidas no local é o turismo submarino uma vez que abriga uma grande variedade de espécies.'),
                  ),
                ),
                child: Image.network(
                  "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Descricao(
                        titulo: 'Rio de Janeiro',
                        tituloTexto: 'Rio, Brasil',
                        texto:
                            'A cidade do Rio de Janeiro, considerada uma das mais belas do mundo, é a capital do estado do Rio de Janeiro, na região Sudeste do Brasil. Todos os anos, suas belas praias atraem muitos turistas de outras partes do país e do exterior. No Carnaval, milhares de visitantes assistem aos desfiles das escolas de samba cariocas. Quem nasce na cidade do Rio de Janeiro é carioca. O Rio de Janeiro, também conhecido por Rio, é rico em belezas naturais e em tradições culturais. No Rio se originou o samba e é onde acontece uma das maiores celebrações do Carnaval. O Rio de Janeiro, também conhecido por Rio, é rico em belezas naturais e em tradições culturais. No Rio se originou o samba e é onde acontece uma das maiores celebrações do Carnaval. Há muito que ver na cidade. Os pontos que atraem mais turistas são o Cristo Redentor e o Pão de Açúcar. Uma imensa estátua do Cristo Redentor encontra-se no topo do morro do Corcovado, de onde se tem uma vista magnífica da cidade. Sobe-se até lá por um trem panorâmico. O Cristo Redentor fica no Parque Nacional da Tijuca, que abriga a floresta da Tijuca — a maior floresta urbana do mundo. Na Tijuca, há vários pontos de interesse, como rios, cachoeiras, lagos, mirantes, trilhas e animais que vivem livremente na mata.Outro lugar muito visitado é o Pão de Açúcar. Para chegar ao topo do morro, toma-se um teleférico conhecido como bondinho. Do alto, é possível admirar a bela paisagem carioca de um ângulo diferente daquele do Corcovado.Entre as praias, Copacabana, Ipanema, Leblon e Barra da Tijuca são as mais procuradas. Copacabana e Ipanema são famosas internacionalmente. A cidade também tem muitas atrações culturais, como museus, teatros, cinemas, espetáculos de música, além dos ensaios das escolas de samba. O Maracanã, principal estádio de futebol da cidade, é o maior do Brasil. Foi construído para a Copa do Mundo de 1950, realizada no Brasil.Como ex-capital do Império e, depois, ex-capital da República, o Rio tem vários prédios históricos em que ocorreram fatos significativos para o país. Passear pelo centro da cidade é uma forma de reviver essa históriaEconomia O turismo é a principal atividade econômica do Rio. O comércio e os serviços também ocupam lugar de destaque na economia.'),
                  ),
                ),
                child: Image.network(
                  "https://todepassagem.clickbus.com.br/wp-content/uploads/2020/03/Cristo-Redentor-RJ.jpg",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Descricao(
                        titulo: 'Belo Horizonte',
                        tituloTexto: 'BH, Brasil',
                        texto:
                            'A cidade de Belo Horizonte, capital de Minas Gerais, tem história recente, num Estado de antigas tradições. Foi fundada em 12 de dezembro de 1897, cerca de 150 anos após a criação da primeira cidade mineira, Mariana, em 1745. Sua localização está na Região Sudeste do Brasil, formada ainda pelos Estados do Rio de Janeiro, São Paulo e Espírito Santo. A região de Belo Horizonte começou a ser povoada em 1701, pelo bandeirante João Leite Ortiz. Em suas terras, nasceu o arraial de Curral del-Rei, em 1707, nome que iria perdurar até a fundação da nova cidade. Em 1893 foi promulgada da lei que determinava a mudança da capital Vila Rica (atual Ouro Preto) para Belo Horizonte. A cidade foi construída de forma planejada, inspirada nos modelos urbanos de Paris e Washington. A capital é emoldurada pela Serra do Curral e apresenta diversas atrações em sua paisagem urbana, com destaque para o Conjunto Arquitetônico da Pampulha e da Praça da Liberdade. A Pampulha foi erguida entre 1942 e 1943, durante a administração de Juscelino Kubitschek (1902-1976) na prefeitura. Um de seus principais atrativos, a igreja de São Francisco de Assis é o cartão postal de Belo Horizonte e um dos principais trabalhos do arquiteto Oscar Niemeyer, que se tornou mundialmente conhecido pela construção de Brasília. Já o conjunto da Praça da Liberdade, onde está localizado o Palácio da Liberdade, sede do governo mineiro, data da época da fundação da capital, entre 1895 e 1897. A cidade possui bairros com forte vocação para diversos tipos de comércio - do popular ao de alto luxo - e vida noturna intensa, que lhe deu o título informal de "a capital brasileira dos bares", pela quantidade de estabelecimentos espalhados pelos bairros que animam a noite belo-horizontina. Outros importantes atrativos turísticos de Belo Horizonte são o estádio Mineirão, o Mercado Central, o Museu Histórico Abílio Barreto, o Museu de Artes e Ofícios localizado na Praça da Estação, os parques Municipal e das Mangabeiras, o Palácio das Artes e a praça do Papa  -  de onde se tem uma excelente vista panorâmica. Belo Horizonte tem 2,4 milhões de habitantes. É a sexta capital mais populosa do Brasil, atrás de São Paulo, Rio de Janeiro, Brasília, Salvador e Fortaleza. A Região Metropolitana possui 33 municípios e 4,5 milhões de habitantes. A temperatura é amena, com médias de 22º C. Principais distâncias: São Paulo (586 km), Rio de Janeiro (435 km) e Brasília (740 km).'),
                  ),
                ),
                child: Image.network(
                  "https://s2.glbimg.com/VtQAOB9yAgWWk_bF3mOIYtQmNEM=/0x0:1280x960/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/u/r/bB9CVMQQyASUa6jkIAgQ/whatsapp-image-2019-05-26-at-11.08.41.jpeg",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Descricao(
                        titulo: 'Atletico Mineiro',
                        tituloTexto: 'Galo, MG',
                        texto:
                            'O Clube Atlético Mineiro é uma tradicional agremiação esportiva brasileira, sediada na cidade de Belo Horizonte, capital do Estado de Minas Gerais. Atualmente, o Clube investe em um projeto de longo prazo para se tornar referência em futebol na América Latina, dentro e fora das quatro linhas. Campeão continental, nacional e estadual, o Atlético é a grande paixão do povo mineiro. Mais de nove milhões de torcedores formam a torcida mais atuante do País. Mais sobre os títulos do Atlético Fundado em 25 de março de 1908, o Clube Atlético Mineiro rompeu as fronteiras de Minas Gerais e do Brasil para se tornar um dos maiores e mais tradicionais clubes do futebol sul-americano. Mais sobre a História do Clube O Atlético tem como cores tradicionais o preto e o branco, desde a sua fundação. Uniforme AtualUniformes Histórico. O símbolo mais popular do Atlético é o Galo, mascote oficial desde o final da década de 1930. Mais sobre o Galo Melhor centro de treinamento e concentração da América do Sul e um dos melhores do mundo, a Cidade do Galo faz do Atlético uma referência em estrutura para futebol profissional e de base, com foco na conquista de títulos de expressão e na formação de atletas de alto rendimento. Mais sobre a Cidade do Galo Arena MRV, um salto para o futuro - O Atlético vem se preparando para entrar em uma nova era com a construção do seu estádio próprio, a Arena MRV, em Belo Horizonte. Grande sonho da Massa Atleticana, a Arena MRV terá capacidade para 46 mil torcedores. A nova casa do Galo será a arena mais moderna e tecnológica da América do Sul e representa uma nova etapa na história do Clube. A inauguração está prevista para outubro de 2022. Mais sobre a Arena MRV'),
                  ),
                ),
                child: Image.network(
                  "data:image/png;base64,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",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Descricao(
                        titulo: 'Prefeitura',
                        tituloTexto: 'Contagem, MG',
                        texto:
                            'O conjunto é formado pelo prédio construído na década de 1950 para abrigar o Seminário São José da Ordem dos Carmelitas, pela praça Tancredo Neves e pela Capela Santa Helena. Em 1969, passou o prédio passou a sediar a Escola de Engenharia da Fundação da Universidade de Minas Gerais. Em 1985, tornou-se sede da Administração Municipal. A Capela de Santa Helena foi construída em 1868 em estilo barroco. Foi demolida em meados da década de 1940 do século XX e reconstruída em estilo eclético lembrando a arquitetura românica.. Além do trabalho religioso, presta serviços sociais à comunidade. A Praça Tancredo Neves foi construída em 1991 construída em 1991, com uma área de lazer com 20.000 metros quadrados, arborização, playground, quadras poliesportivas, coreto, pista de caminhada e skate. Em 2011, foi reformada e ganhou novos equipamentos, como a cachoeira, tornando-se um novo cartão postal da cidade. O conjunto foi tombado pelo Decreto 190 de 22 de setembro de 2005. Endereço: Praça Tancredo Neves , 200 Bairro Camilo Alves.'),
                  ),
                ),
                child: Image.network(
                  "http://www.contagem.mg.gov.br/arquivos/fotos/patrimonio/dsc_0082.jpg",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Descricao(
                      titulo: 'Shopping',
                      tituloTexto: 'Big Shopping, Contagem',
                      texto: 'O Big é o melhor shopping de Contagem.',
                    ),
                  ),
                ),
                child: Image.network(
                  "https://static.wixstatic.com/media/e5a7d5_bb6bb47e2ad9442aaf08d5a34bfffd29~mv2.png/v1/fill/w_548,h_400,al_c,q_85,usm_0.66_1.00_0.01/e5a7d5_bb6bb47e2ad9442aaf08d5a34bfffd29~mv2.webp",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Descricao extends StatelessWidget {
  final String titulo;
  final String tituloTexto;
  final String texto;

  Descricao({
    required this.titulo,
    required this.tituloTexto,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          this.titulo,
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                this.tituloTexto,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                  backgroundColor: Colors.black,
                ),
              ),
              margin: EdgeInsets.fromLTRB(5, 90, 5, 2),
            ),
            Expanded(
              child: Container(
                child: Text(
                  this.texto,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    backgroundColor: Colors.black,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(30, 100, 5, 80),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Voltar',
        child: Icon(
          Icons.arrow_back,
        ),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
