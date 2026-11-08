## Instituição

`ETEC Vasco Antônio Venchiarutti`

------------------------------------------------------------------------

## Curso

`Informática para Internet`

------------------------------------------------------------------------

## Disciplina

`DDM – Desenvolvimento para Dispositivos Móveis`

------------------------------------------------------------------------

## Turma

`2°D`

------------------------------------------------------------------------

## Autores

-   `Gustavo Bastos da Silva`
-   `Bianca Rocha do Nascimento`

------------------------------------------------------------------------

# Relatório -- Aplicativo de Quiz sobre Impressionismo

## Objetivo

O objetivo deste trabalho foi desenvolver um aplicativo de perguntas e
respostas sobre o movimento artístico Impressionismo, utilizando o MIT
App Inventor, PHP e um banco de dados MySQL. A proposta foi criar um
aplicativo para celular que carregasse perguntas armazenadas no banco de
dados e permitisse que o usuário respondesse a elas.

------------------------------------------------------------------------

# Projeto -- Quiz de Impressionismo

## Objetivo do aplicativo

O aplicativo tem como objetivo testar os conhecimentos do usuário sobre
o Impressionismo por meio de perguntas de múltipla escolha.

As perguntas são armazenadas em um banco de dados e carregadas pelo
aplicativo através de uma conexão com arquivos PHP. Dessa forma, o
conteúdo pode ser organizado no banco de dados e enviado ao celular
quando o aplicativo solicita as perguntas.

------------------------------------------------------------------------

## Funcionamento do aplicativo

Ao iniciar o aplicativo, ele realiza uma solicitação ao servidor local
para buscar as perguntas disponíveis no banco de dados.

O PHP recebe essa solicitação, consulta a tabela `impressionismo` no
banco de dados `dbquiz2` e seleciona até 10 perguntas em ordem
aleatória.

Depois da consulta, o PHP organiza as informações e transforma o
resultado em JSON, um formato utilizado para transmitir dados entre
sistemas. O aplicativo recebe esse conteúdo e utiliza as informações
para apresentar as perguntas e alternativas ao usuário.

O funcionamento pode ser resumido da seguinte maneira:

**Aplicativo solicita as perguntas → PHP recebe a solicitação → PHP
consulta o banco SQL → perguntas são organizadas em JSON → servidor
local envia os dados → aplicativo recebe e apresenta as perguntas.**

As alternativas também são embaralhadas pelo PHP, fazendo com que a
posição da resposta correta possa mudar entre as partidas.

------------------------------------------------------------------------

## Banco de dados

Foi utilizado o banco de dados `dbquiz2`, com uma tabela chamada
`impressionismo`.

Essa tabela armazena as informações necessárias para cada pergunta,
incluindo:

-   Identificação da pergunta;
-   Enunciado;
-   Alternativa A;
-   Alternativa B;
-   Alternativa C;
-   Alternativa D;
-   Letra correspondente à resposta correta.

O banco de dados permite manter as perguntas organizadas e facilita a
inclusão de novas questões sem precisar alterar toda a estrutura do
aplicativo.

------------------------------------------------------------------------

## Desenvolvimento do projeto

O projeto foi desenvolvido por Gustavo Bastos da Silva e Bianca Rocha do
Nascimento, com participação nas etapas de criação visual, organização
do banco de dados e programação da comunicação entre o aplicativo e o
servidor.

### Bianca Rocha do Nascimento

Bianca iniciou o desenvolvimento do design do aplicativo, criando uma
primeira base visual para a interface.

Também iniciou a criação e a organização do banco de dados, que seria
utilizado para armazenar as perguntas e suas respectivas alternativas.

=

------------------------------------------------------------------------

## Programação e comunicação com o servidor

Para que o aplicativo pudesse receber as perguntas armazenadas no banco
de dados, foram utilizados arquivos PHP com funções diferentes.

### 1. Conexão com o banco de dados

Foi criado um arquivo PHP chamado `conexao.php`, responsável por
realizar a conexão entre o PHP e o banco de dados MySQL.

Esse arquivo informa os dados necessários para acessar o banco, como
servidor, usuário, senha e nome do banco utilizado.

### 2. Busca e organização das perguntas

Foi criado outro arquivo PHP, chamado `perguntas.php`, responsável por
consultar a tabela `impressionismo`.

A consulta seleciona até 10 perguntas aleatórias. Depois, o código
organiza as alternativas e embaralha suas posições, atualizando também a
letra da resposta correta para que ela continue correspondendo à
alternativa certa.

### 3. Conversão para JSON

Após buscar e organizar as perguntas, o PHP transforma os dados em JSON.

O JSON permite que as informações sejam transmitidas de forma organizada
e compreendida pelo aplicativo. Nesse projeto, ele é utilizado para
enviar os enunciados, as alternativas e as respostas corretas.

### 4. Envio pelo servidor local

Durante os testes, foi utilizado um servidor local para executar os
arquivos PHP e permitir a comunicação com o aplicativo no celular.

O aplicativo acessa o endereço correspondente ao arquivo
`perguntas.php`. O servidor executa o código, consulta o banco de dados
e retorna as perguntas no formato JSON.

Assim, o aplicativo não precisa armazenar todas as perguntas diretamente
em sua programação, pois pode recebê-las do banco de dados por meio do
servidor.

------------------------------------------------------------------------

=
