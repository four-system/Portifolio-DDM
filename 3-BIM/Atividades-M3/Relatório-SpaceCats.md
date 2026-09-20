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
