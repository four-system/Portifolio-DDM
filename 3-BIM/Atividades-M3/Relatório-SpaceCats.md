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

## Prints da Interface e do Design

### Tela de Seleção de Personagem (Jogador 1)
![Interface de Seleção P1](imagens/selecao.png)[cite: 19]

### Interface da Arena de Batalha (Jogo em Execução)
![Interface de Jogo](imagens/jogo.png)[cite: 15]

---

# Documentação e Explicação dos Blocos de Código

Abaixo estão detalhadas as capturas de tela de todos os blocos de programação desenvolvidos no MIT App Inventor, divididas por funcionalidade e lógica do sistema.

---

### 1. Colisão das Bolas com as Bordas (Quicar e Transição)

![Colisão das Bolas com a Borda](imagens/bolaborda.png)

* **`quando Bola1.AlcançouBorda` / `quando Bola2.AlcançouBorda`:** Controla a física dos tiros ao atingirem os limites da arena.
* **Lógica de Transição:** Caso o tiro atinja a borda limite (borda 3 ou -3), o jogo executa um procedimento para transferir a bola entre áreas (`bola1pra2` ou `bola2pra1`).
* **Quicar e Contador de Rebatidas:** Se a bola atingir uma borda comum, o evento invoca a função nativa `.Quicar`, incrementa a variável global `numerobordas` em +1, define a velocidade da bola para 10 e chama o procedimento `rebatidas` para verificar se o limite de quiques foi atingido.

---

### 2. Escolha e Seleção do Jogador 1 (Clique nos Personagens)

![Seleção de Personagens P1](imagens/selecao1.png)[cite: 20]

* **`quando Imagem1..4.Clique`:** Trata a seleção inicial do Jogador 1 ao clicar em uma das quatro opções de personagens/naves[cite: 20].
* **Atribuição de Valor:** Define a variável `global selecionado1` com o número correspondente (1 a 4)[cite: 20].
* **Animação e Interface:** Ativa o `Temporizador1` (que faz o efeito visual de expansão do card), torna o botão de confirmação (`Botão2`) visível e atualiza as imagens dos cards para destacar a opção selecionada (`redidle-sec.png`, etc.)[cite: 20]. Toca o efeito sonoro de seleção (`select.Tocar`)[cite: 20].

---

### 3. Confirmação de Seleção do Jogador 1

![Confirmação de Seleção P1](imagens/confirmar1.png)

* **`quando Botão2.Clique`:** Trata a confirmação da escolha de nave do Jogador 1 baseando-se no valor armazenado na variável `global selecionado1`.
  * **Visual:** Altera o componente de imagem para o estado confirmado (`red-choosen.png`, `blue-choosen.png`, etc.) e ativa o `Temporizador2`.
  * **Efeito Sonoro:** Aciona o som `confirm.Tocar`.
* **`quando Temporizador2.Disparo`:** Abre automaticamente a tela `selecao2` para que o Jogador 2 realize sua escolha.

---

### 4. Animação de Seleção e Expansão Visual (Jogador 1)

![Animação de Seleção P1](imagens/animacao1select.png)

* **`quando Temporizador1.Disparo`:** Executa o ciclo de animação de destaque visual para a nave selecionada.
* **Lógica de Expansão:** Verifica a opção em `global selecionado1` e adiciona +4 pixels à largura e altura do quadro e da imagem a cada pulso do temporizador.
* **Condição de Parada:** Quando a largura atinge 185 pixels, o temporizador é desativado (`Ativado = falso`).

---

### 5. Seleção do Jogador 2 e Validação de Personagem Repetido

![Seleção de Personagens P2](imagens/selecao2.png)[cite: 11]

* **`quando Imagem1..4.Clique` (Tela Seleção 2):** Registra a escolha do Jogador 2 e valida se o personagem já foi escolhido pelo Jogador 1[cite: 11].
* **Bloqueio de Duplicidade:** Compara a opção clicada (`global selecionado2`) com o valor salvo no **TinyDB1** sob a tag `"P1"`[cite: 11].
  * **Se for igual:** Dispara um alerta (`Notificador1`) com a mensagem *"O Player 1 Já Selecionou Este Personagem. Tente outro..."*, oculta o botão de confirmação e toca o som de erro (`error.Tocar`)[cite: 11].
  * **Se for diferente:** Permite a escolha, ativa a animação no `Temporizador1`, salva a escolha chamando `salvarSelecaoP2` e toca o som de seleção[cite: 11].

---

### 6. Confirmação do P2, Salvamento (TinyDB) e Reset de Dimensões

![Confirmação P2 e Reset](imagens/confirmar2.png)[cite: 12]
![Procedimento Reset](imagens/procedimento1.png)[cite: 16]

* **`quando Botão2.Clique` (P2):** Executa `salvarSelecaoP2`, troca a imagem do card para o estado confirmado (`red-choosen.png`, etc.), aciona o `Temporizador2` e toca o som de confirmação[cite: 12].
* **`quando Temporizador2.Disparo`:** Transiciona o aplicativo para a tela principal de combate (`TelaJogo`)[cite: 12].
* **Procedimento `procedimento`:** Redimensiona todas as imagens e contêineres de seleção de volta às suas dimensões padrão (140x175 pixels), garantindo o alinhamento adequado da interface[cite: 12, 16].

---

### 7. Salvamento em Banco de Dados Local (TinyDB) do Jogador 1 e 2

![TinyDB P1](imagens/tinydb1.png)[cite: 21]
![Animação Seleção P2 e TinyDB](imagens/animacao2tinydb.png)

* **Procedimento `p1selecionado`:** Executa a chamada `TinyDB1.ArmazenarValor` definindo o rótulo como `" P1 "` e o valor como o conteúdo da variável `global selecionado1`[cite: 21].
* **Procedimento `salvarSelecaoP2`:** Salva o valor da variável `global selecionado2` no **TinyDB1** sob o rótulo `"P2"`.
* **Animação do Jogador 2:** Executa a expansão progressiva (+4 pixels na largura e altura) para o card ativo até atingir o limite de 185 pixels.

---

### 8. Inicialização da Partida e Carregamento de Skins (TelaJogo)

![Inicialização das Cores na TelaJogo](imagens/qualcor1.png)[cite: 17]

* **`quando TelaJogo.Inicializar`:** Configura as naves e habilidades dos dois jogadores logo ao carregar a partida[cite: 17].
* **Leitura do TinyDB:** Lê as tags `"P1"` e `"P2"` salvas no TinyDB1[cite: 17].
* **Atribuição do Jogador 1:** Define a sprite da nave (`foguetevermelho1.png`, `fogueteazul1.png`, etc.), guarda a cor em `global cores` e define o ícone do botão de Ultimate (`ult_cor1.png`, etc.)[cite: 17].
* **Atribuição do Jogador 2:** Define a sprite correspondente do P2 (`foguetevermelho12.png`, etc.), atribui o valor a `global cores2` e atualiza o ícone de sua Ultimate[cite: 17].
* **Início do Contador:** Ativa o cronômetro principal do jogo (`contagem.Ativado = verdadeiro`)[cite: 17].

---

### 9. Mapeamento e Configuração das Ultimates por Personagem

![Ativação de Ultimates por Cor](imagens/qualult.png)[cite: 18]

* **Procedimentos `qualult` e `qualult2`:** Determinam qual habilidade especial será atribuída a cada jogador com base na cor/nave escolhida (`global cores` / `global cores2`)[cite: 18].
  * **Opção 1:** Atribui `ultativa = 1` (Tiro Guiado / Homing Shot)[cite: 18].
  * **Opção 2:** Atribui `ultativa = 2` e ativa o componente `escudo`[cite: 18].
  * **Opção 3:** Atribui `ultativa = 3` (Modo Parede Evolutiva), acionando os procedimentos `ult3` / `ult32` e tornando `parede1` / `parede2` visíveis[cite: 18].
  * **Opção 4:** Atribui `ultativa = 4` (Super Velocidade / Dano Extra)[cite: 18].

---

### 10. Movimentação dos Jogadores e Sincronização dos Tiros

![Movimentação e Sincronização](imagens/jogadorarrastado.png)[cite: 14]

* **`quando jogador1.Arrastado` / `quando jogador2.Arrastado`:** Permite que os jogadores movimentem suas naves verticalmente na tela através do toque e arraste (`yAtual`), desde que a partida esteja ativa (`global jogoativo = verdadeiro`)[cite: 14].
* **`quando Temporizador3.Disparo`:** Atualiza e sincroniza continuamente a posição $X$ e $Y$ dos componentes gráficos de tiro (`Tiro` e `tiro2`) com a posição real das projéteis (`Bola1` e `Bola2`)[cite: 14].
* **Procedimento de Início:** Ativa o `Temporizador3` e reseta a velocidade da bola[cite: 14].

---

### 11. Controle de Rebatidas, Turnos e Ativação de Ultimates

![Ativação de Rebatidas e Ultimates](imagens/ativarerebatidas.png)

* **Procedimento `rebatidas`:**
  * Verifica se o total de quiques (`global numerobordas`) atingiu o limite de 7 rebatidas.
  * Caso o limite seja atingido, esconde e desativa os projéteis, zera suas velocidades e passa o turno para o outro jogador (`global quematira`).
  * Chama os procedimentos de troca de turno (`ativar1` ou `ativar2`) e reseta o contador de bordas.
* **Procedimento `ultimate`:** Exibe o botão de habilidade especial (`ult1` ou `ult2`) exclusivamente para o jogador cuja nave foi destruída no turno anterior.

---

### 12. Disparo de Tiros e Desencadeamento de Habilidades

![Disparo e Ultimates](imagens/blocosultdisparo.png)

* **`quando disparo.Disparo` / `quando disparo2.Disparo`:** Posiciona o projétil (`Bola1` / `Bola2`) nas coordenadas exatas da nave do jogador antes do lançamento.
* **`quando ult1.Tocou` / `quando ult2.Tocou`:** Registra o acionamento da Ultimate pelo jogador, oculta o botão da habilidade e executa o procedimento `qualult`.
* **Procedimentos `ult3` e `ult32`:** Preparam e tornam visíveis as estruturas de parede quando a Ultimate do tipo 3 é ativada.

---

### 13. Colisões do Tiro 1 – Escudos, Paredes Evolutivas e Dano (Parte 1)

![Colisão Bola 1 - Parte 1](imagens/bola1parte1.png)

* **`quando Bola1.ColidiuCom`:**
  * **Colisão com Escudo:** Se o projétil atingir o escudo, toca o efeito sonoro de impacto, oculta o escudo e inverte o sentido do tiro (+180°).
  * **Mecânica da Ultimate 3 (Parede Evolutiva):**
    * Cada impacto com `parede1` incrementa a variável `global parede`.
    * **Estágios:** 1ª batida (`parede1.png`), 2ª batida (`parede2.png`), 3ª batida (`parede3.png`). Na 4ª batida, a estrutura se destrói (`Visível = falso`) e toca o som de quebra.
    * A bola ricocheteia (+180°) nos três primeiros estágios.

---

### 14. Colisões do Tiro 1 – Impacto no Jogador e Fim de Jogo (Parte 2)

![Colisão Bola 1 - Parte 2](imagens/bola1parte2.png)

* **Impacto no Jogador 1:**
  * **Tiro Guiado (Ultimate 1):** Se a Ultimate 1 estiver ativa, redireciona a trajetória da bola diretamente até o alvo (`ApontarParaPonto`) com alta velocidade (17).
  * **Cálculo de Dano:** Caso contrário, paralisa o projétil, desativa a movimentação, dispara a animação de explosão e reduz a vida do jogador em -1.
  * **Verificação de Vitória:** Se os pontos de vida chegarem a 0, exibe a mensagem **"Jogador 2 Ganhou!"**, tornando visível a tela de resultado.

---

### 15. Colisões do Tiro 2 – Escudos e Paredes Evolutivas (Parte 1)

![Colisão Bola 2 - Parte 1](imagens/bola2parte1.png)

* Lógica de colisão para o projétil do Jogador 2 (`Bola2`):
  * Gerencia colisões com `escudo2`, ocultando o escudo e refletindo a direção da bola.
  * Controla os 4 estágios de degradação e destruição de `parede2`, atualizando as imagens e efeitos sonoros a cada impacto.

---

### 16. Colisões do Tiro 2 – Dano ao Jogador 2 e Vitória do P1 (Parte 2)

![Colisão Bola 2 - Parte 2](imagens/bola2parte2.png)

* **Impacto no Jogador 2:**
  * Se a Ultimate 2 do P2 estiver ativa, recalcula a rota da `Bola2` apontando diretamente para as coordenadas do Jogador 1 com velocidade 25.
  * Em caso de dano direto, interrompe o projétil, aciona a animação de explosão e subtrai 1 ponto da vida do Jogador 2 (`global vida2`).
  * **Condição de Vitória:** Quando a vida do P2 chega a zero, exibe o texto **"Jogador 1 Ganhou!"** e encerra a partida.

---

### 17. Animação de Explosão e Destruição das Naves

![Animação de Explosão](imagens/explosao.png)[cite: 13]

* **`quando animacaoexplosao.Disparo`:** Controla a sequência de quadros (frame-by-frame) da explosão quando uma nave é atingida[cite: 13].
* **Centralização do Efeito:** Calcula o centro exato da nave atingida (`X = jogador.X + jogador.Largura/2 - explosao.Largura/2`) para alinhar a animação[cite: 13].
* **Ciclo de Animação:** Transita sequencialmente pelas imagens `explosao1.png`, `explosao2.png`, `explosao3.png` e `explosao4.png`[cite: 13].
* **Finalização:** Toca o efeito sonoro `explosaosom.Tocar`[cite: 13]. Ao término do 4º quadro, desativa a animação e redireciona a partida para o menu ou tela de contagem se houver vidas restantes[cite: 13].

---

### 18. Reset de Tiros, Ativação de Escudos e Reinício de Partida

![Reset e Escudos](imagens/ultimosblocos.png)[cite: 22]

* **Procedimento `resetarTiros`:** Zera a velocidade das bolas (`Bola1` e `Bola2`), desativa o estado de visibilidade e movimento dos tiros e reposiciona os projéteis para as coordenadas relativas das naves dos jogadores (`jogador1.X + 180`, `jogador2.X - 50`)[cite: 22].
* **`quando escudo.Disparo`:** Verifica se a Ultimate do tipo 2 foi acionada por algum dos jogadores (`ultativa1 = 2` ou `ultativa2 = 2`). Se sim, torna visível o respectivo escudo (`escudo1` ou `escudo2`) e posiciona-o em relação às coordenadas da nave[cite: 22].
* **`quando Botão1.Clique` (Reiniciar Partida):** Restaura as vidas de ambos os jogadores (`vida = 3`, `vida2 = 3`), desativa o jogo ativo, reseta o contador de bordas, oculta os botões de Ultimate e os escudos/paredes, reativa o rótulo do cronômetro (`contagemlabel`) e restaura as imagens iniciais das paredes (`parede1.png`)[cite: 22].

---

# Considerações Finais

O desenvolvimento do **Space Cats** permitiu aplicar na prática os conceitos estudados na disciplina de Desenvolvimento para Dispositivos Móveis (DDM), utilizando programação por blocos no MIT App Inventor.

Durante o desenvolvimento, foram trabalhados conceitos de movimentação, colisão, sistema de tiros, lógica de jogo, armazenamento de dados em banco local (TinyDB), efeitos sonoros, animações frame-a-frame e habilidades especiais (Ultimates).

O projeto também foi desenvolvido em equipe, com cada integrante contribuindo em diferentes partes do jogo, desde a criação da base até a implementação das Ultimates, do sistema TinyDB, dos sons e do design.

---

*Relatório desenvolvido para fins educacionais na disciplina de Desenvolvimento para Dispositivos Móveis (DDM), utilizando o MIT App Inventor.*
