# CAP394
### Project: questions to be answered

1. What is the science problem I need to solve?
2. What is the data that is available for this problem? Is it simple to get hold of this data? What is the volume of the data? Where is it? What is its format?
3. What do I think I will achieve by analyzing this data? What are the expected results?


## DESASTRES: Quem morre por desastres no Brasil?
1. Introdução
1. Perguntas de pesquisa
1. Os Dados
1. O Desafio

### Introdução
Segundo Atlas Brasileiro de Desastres Naturais, 1991 a 2010 (https://s2id.mi.gov.br/paginas/atlas/) já foi registrados 39.000 casos de desastres no Brasil neste período, contabilizando 126.926.656 afetados.
São 11 as categorias de desastres que acontecem no Brasil: Estiagem e seca, Enxurrada, Inundação, Vendavais, Granizo, Movimento de Massa, Erosão, Incêndio, Tornado, Alagamento e Geada. As que mais geram número de afetados são Estiagem e seca, enxurradas e inundações sendo estiagem e seca responsável por mais de 50% no número de afetados por desastres no Brasil. Mas são as enxurradas as maiores responsáveis por número de mortos por desastres no Brasil (CEPED, 2013).

![screen shot 2018-09-05 at 12 43 31](https://user-images.githubusercontent.com/42258127/45104925-804aae00-b109-11e8-9379-d117350fd317.png)

O orgão governamental responsável por coordenar as ações de proteção e defesa civil relativas a desastres em todo o território nacional é o Ministério da Integração Macional, através da Secretaria Nacional de Proteção e Defesa Civil - SEDEC. Mas é através da atuação das Defesas Civis municipais que se dão as inciativas para redução dos riscos e resposta aos desastres. 

### Perguntas de Pesquisa
Quando se trata de desastres, algumas perguntas de pesquisa são centrais e grupos de pesquisa em todo o globo buscam responser a questões como "quais grupos são mais vulneráveis a desastres?", "quais fatores são responsáveis pelo incremento de vulnerabilidade a desastres?", "quais fatores se apresentam como potenciais redutores do risco de desastres?".

SADIA e colaboradores (2016) trazem em sua publicação interessantes dados de diferentes eventos de desastres ao longo da história e o consequente alto número de mortes entre as mulheres: terremoto na Rússia em 1948, terremoto de 1976 na Guatemala, de 1992 no Egito, o devastador ciclone no sul da Ásia em 1991 e o tsunami de 2004 na Indonésia, em que os dados de mortalidade por desastres apontam as mulheres como grupo mais vulnerável.

ARYAL (2014) traz importantes dados de como no Nepal educação e renda são importante elementos responsáveis pelo aumento de vulnerabilidade a desastres. OFRENEO & HEGA (2016) apontam, através de dois estudos de caso nas Philipinas, de como a troca de informações em redes de convivio com uso de novas tecnologias pode se apresentar como potencial elemento redutor do risco a desastres.

No Brasil importantes perguntas de pesquisa ainda se encontram sem respostas: “Quem” morre por desastres no Brasil?, "São as familias de baixa renda as mais vulneráveis a desastres?", "O grau de escolaridade pode ser fator chave para redução do risco no Brasil?", "É a vulnerabilidade a desastres no Brasil específica para gênero? São as mulheres e meninas brasileiras mais vulneráveis?", entre outras.

A falta de dados disponíveis sobre vítimas de desastres por idade, gênero, renda, escolaridade, entre outros aspectos, apresenta-se como uma primeira dificuldade para responder importantes questões científicas como as acima colocadas.

### Os dados

São duas as categorias de dados:
1. Dados do Ministério da Integração Nacional: dados de número absolutos de afetados por desastres no Brasil (https://s2id.mi.gov.br) disponíveis em plataforma online para os anos 2013 até dias atuais. São planilhas csv. apresentadas por estado x ano contendo a tipologia do desastre e o numero absoluto de desastres (conforme ilustra figura abaixo)

![imagem_dados_s2id](https://user-images.githubusercontent.com/42258127/45462599-f6897a80-b6de-11e8-9199-2f894c6f72a4.png)

2. Dados de Mortalidade do Ministério da Saúde (http://www2.datasus.gov.br), que contém Estatísticas vitais de Mortalidade - Categorias CID10, que possui alguma sub-categorias de mortalidade relacionadas a “forças da natureza”. Os dados estão disponíveis desde o ano de 1996 e os "mortos" estão sub-classificados por sexo, cor, raça, nível educacional, estado civil e outros.

### O desafio

O desafio aqui colocado é metodológico e conceitual.

Metodologicamente é preciso entender se os dados do S2ID e de Mortalidade do MS são correlacionáveis. Se é possível de correlacioná-los para então tentar sobrepassar o desafio conceitual e responder quem morre por desastres  no Brasil e se são as mulheres brasileiras mais vulneráveis a desastres do que os homens.

Com uso de Data Science, com uso do Rstudio, espera-se superar incialemnte o desafio metodológico para então buscar responder as questões conceituais.


#### Referências

ARYAL, K. Women's Empowerment in Building Disaster Resilient Communities. Asian Journal of Women's Studies, v. 20, n. 1, p. 164-174, 2014.

CEPED. Atlas brasileiro de desastres naturais 1991 a 2012: volume Brasil. Florianópolis: Centro Universitário de Estudos e Pesquisas sobre Desastres, UFSC, 2012.

OFRENEO, R. P. & HEGA, M. D. Women’s solidarity economy initiatives to strengthen food security in response to disasters: Insights from two Philippine case studies. Disaster Prevention and Management, v. 25, n. 2, p. 168-182, 2016.

SADIA, H. et al. Gender-sensitive public health risks and vulnerabilities’ assessment with reference to floods in Pakistan. International Journal of Disaster Risk Reduction, v. 19, p. 47-56, 2016.

#### Imagens
Estadão, 2017 - disponível em https://sustentabilidade.estadao.com.br/blogs/ambiente-se/desastres-naturais-custaram-ao-brasil-r-182-bi-em-20-anos/

