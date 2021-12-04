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
      appBar: AppBar(
        title: Text(
          "Álbum",
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: ListView(
          children: <Widget>[
            Padding(
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
                  "https://cdn.britannica.com/84/94384-050-CF600F39.jpg",
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
                        tituloTexto: 'BH, EBrasil',
                        texto:
                            'A cidade de Belo Horizonte, capital de Minas Gerais, tem história recente, num Estado de antigas tradições. Foi fundada em 12 de dezembro de 1897, cerca de 150 anos após a criação da primeira cidade mineira, Mariana, em 1745. Sua localização está na Região Sudeste do Brasil, formada ainda pelos Estados do Rio de Janeiro, São Paulo e Espírito Santo. A região de Belo Horizonte começou a ser povoada em 1701, pelo bandeirante João Leite Ortiz. Em suas terras, nasceu o arraial de Curral del-Rei, em 1707, nome que iria perdurar até a fundação da nova cidade. Em 1893 foi promulgada da lei que determinava a mudança da capital Vila Rica (atual Ouro Preto) para Belo Horizonte. A cidade foi construída de forma planejada, inspirada nos modelos urbanos de Paris e Washington. A capital é emoldurada pela Serra do Curral e apresenta diversas atrações em sua paisagem urbana, com destaque para o Conjunto Arquitetônico da Pampulha e da Praça da Liberdade. A Pampulha foi erguida entre 1942 e 1943, durante a administração de Juscelino Kubitschek (1902-1976) na prefeitura. Um de seus principais atrativos, a igreja de São Francisco de Assis é o cartão postal de Belo Horizonte e um dos principais trabalhos do arquiteto Oscar Niemeyer, que se tornou mundialmente conhecido pela construção de Brasília. Já o conjunto da Praça da Liberdade, onde está localizado o Palácio da Liberdade, sede do governo mineiro, data da época da fundação da capital, entre 1895 e 1897. A cidade possui bairros com forte vocação para diversos tipos de comércio - do popular ao de alto luxo - e vida noturna intensa, que lhe deu o título informal de "a capital brasileira dos bares", pela quantidade de estabelecimentos espalhados pelos bairros que animam a noite belo-horizontina. Outros importantes atrativos turísticos de Belo Horizonte são o estádio Mineirão, o Mercado Central, o Museu Histórico Abílio Barreto, o Museu de Artes e Ofícios localizado na Praça da Estação, os parques Municipal e das Mangabeiras, o Palácio das Artes e a praça do Papa  -  de onde se tem uma excelente vista panorâmica. Belo Horizonte tem 2,4 milhões de habitantes. É a sexta capital mais populosa do Brasil, atrás de São Paulo, Rio de Janeiro, Brasília, Salvador e Fortaleza. A Região Metropolitana possui 33 municípios e 4,5 milhões de habitantes. A temperatura é amena, com médias de 22º C. Principais distâncias: São Paulo (586 km), Rio de Janeiro (435 km) e Brasília (740 km).'),
                  ),
                ),
                child: Image.network(
                  "http://www.chaveiro24horasbh.com.br/fotos/chaveiro%2024%20horas%20pampulha%20bh.jpg",
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
                  "https://www.pluriconsultoria.com.br/wp-content/uploads/2020/07/atletico-mineiro-1024x698.jpg",
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
                        texto: 'O Big é o melhor shopping de Contagem.'),
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
      appBar: AppBar(
        title: Text(
          this.titulo,
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                this.tituloTexto,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              margin: EdgeInsets.fromLTRB(5, 90, 5, 2),
            ),
            Expanded(
              child: Container(
                child: Text(
                  this.texto,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
