---

## Instituição

`ETEC Vasco Antônio Venchiarutti`

---

## Curso

`Informática para Internet`

---

## Disciplina

`DDM – Desenvolvimento para Dispositivos Móveis`

---

## Turma

`2°D`

---

## Autores

* `Gustavo Bastos da Silva`
* `Bianca Rocha do Nascimento`
* `Davi Alves Bressan`
* `Kevin Yamake Nozaki`

---

# Relatório – Space Cats

## Objetivo

O objetivo deste trabalho foi desenvolver um jogo de batalha espacial 1v1 utilizando o MIT App Inventor, aplicando conceitos de programação por blocos, lógica de jogos, colisões, movimentação, sistema de tiros, habilidades especiais e armazenamento de dados.

---

# Projeto – Space Cats

## Objetivo do jogo

O jogo consiste em uma batalha espacial entre dois jogadores, onde cada jogador controla uma nave dentro de uma arena. O objetivo é atingir o adversário utilizando os tiros disponíveis e fazer com que sua nave seja destruída.

Cada nave possui uma **Ultimate diferente**, com uma mecânica própria que pode alterar o comportamento da batalha.

---

## Funcionamento do jogo

A partida começa com os dois jogadores controlando suas respectivas naves.

Durante a batalha, os jogadores podem disparar tiros contra o adversário. O tiro permanece em jogo enquanto estiver viajando pela arena, podendo interagir com as paredes e outros elementos presentes no cenário.

Quando um jogador é atingido, sua nave é destruída e ele recebe acesso à sua Ultimate.

Porém, a Ultimate possui uma condição para ser utilizada: ela só pode ser ativada enquanto o tiro daquele jogador estiver em jogo.

O funcionamento pode ser resumido da seguinte maneira:

**Jogador morre → Ultimate é liberada → jogador dispara → Ultimate pode ser ativada enquanto o tiro estiver em jogo → tiro termina → Ultimate deixa de poder ser utilizada naquele momento.**

Cada Ultimate também pode ser utilizada **uma vez por tiro**.

---

## Ultimates

Cada nave possui uma Ultimate diferente, criada para possuir uma mecânica própria durante a batalha.

As habilidades foram desenvolvidas para alterar o comportamento do jogo enquanto o tiro do jogador permanece em movimento.

### Ultimate 3

A terceira Ultimate possui uma mecânica envolvendo paredes.

A cada vez que o tiro atinge a parede, ela muda para uma nova versão. A sequência funciona da seguinte forma:

* **Primeira batida:** Parede 1
* **Segunda batida:** Parede 2
* **Terceira batida:** Parede 3
* **Quarta batida:** A parede é quebrada

Após a quarta batida, a Ultimate é encerrada. A sequência não retorna para a primeira parede.

---

## Desenvolvimento do projeto

O projeto foi desenvolvido pelos quatro integrantes, com cada um contribuindo em diferentes partes do jogo.

### Gustavo Bastos da Silva

Foi responsável pela criação da **base do jogo**, desenvolvendo a estrutura inicial e dando início ao funcionamento principal do projeto.

Também foi responsável pela **adição dos sons** utilizados no jogo.

### Bianca Rocha do Nascimento

Foi responsável pela correção da **lógica dos tiros**, fazendo com que eles pudessem atravessar o Canvas corretamente.

Também continuou o desenvolvimento do projeto e participou da criação do design do jogo.

### Davi Alves Bressan

Foi responsável pela implementação do sistema **TinyDB** no projeto.

Também iniciou o conceito e o desenvolvimento das **Ultimates**.

### Kevin Yamake Nozaki

Foi responsável por dar continuidade ao desenvolvimento das Ultimates e por **finalizar as habilidades e suas respectivas mecânicas**.

---

## Design

O design do jogo foi desenvolvido por **Bianca Rocha do Nascimento** e **Gustavo Bastos da Silva**.

Foram desenvolvidos elementos visuais como o menu, botões, textos, fundos e outros elementos utilizados na interface e durante a partida.

---

## Utilização de Inteligência Artificial

Durante o desenvolvimento do projeto, foram utilizadas ferramentas de **Inteligência Artificial (IA)** como auxílio.

A IA foi utilizada para criar alguns elementos visuais do jogo, como:

* Alguns fundos;
* Fundo do menu;
* Textos;
* Alguns botões;
* Outros elementos visuais.

Além da parte visual, a IA também foi utilizada como auxílio na **programação**, principalmente para desenvolver algumas lógicas e ajudar na correção de erros encontrados durante o desenvolvimento do projeto.

A Inteligência Artificial foi utilizada como uma ferramenta de apoio para a equipe durante o processo de desenvolvimento.

---

## Print do Design

![Design do Space Cats](imagens/spacecats.png)

---

## Print dos Blocos

![Blocos1 do Space Cats](imagens/bloco1spacecats.png)
![Blocos2 do Space Cats](imagens/bloco2spacecats.png)
![Blocos3 do Space Cats](imagens/bloco3spacecats.png)
![Blocos4 do Space Cats](imagens/bloco4spacecats.png)

---

# Considerações Finais

O desenvolvimento do **Space Cats** permitiu aplicar na prática os conceitos estudados na disciplina de Desenvolvimento para Dispositivos Móveis (DDM), utilizando programação por blocos no MIT App Inventor.

Durante o desenvolvimento, foram trabalhados conceitos de movimentação, colisão, sistema de tiros, lógica de jogo, armazenamento de dados, efeitos sonoros e habilidades especiais.

O projeto também foi desenvolvido em equipe, com cada integrante contribuindo em diferentes partes do jogo, desde a criação da base até a implementação das Ultimates, do sistema TinyDB, dos sons e do design.

---

*Relatório desenvolvido para fins educacionais na disciplina de Desenvolvimento para Dispositivos Móveis (DDM), utilizando o MIT App Inventor.*
