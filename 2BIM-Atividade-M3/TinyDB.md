# App Inventor: Manipulacao de Banco de Dados no Dispositivo com TinyDB
**Integrantes:** Davi Bressan, Gustavo Bastos, Bianca Rocha, Kevin Nozaki.
**Curso:** 2°D

## 1. O que e o MIT App Inventor?

O MIT App Inventor e uma plataforma online criada para desenvolver aplicativos de forma visual, usando blocos de programacao. Em vez de escrever todo o codigo manualmente, o usuario monta a logica do aplicativo encaixando blocos, parecidos com pecas. Isso facilita bastante para quem esta comecando, porque a pessoa consegue aprender conceitos de programacao enquanto ja ve o aplicativo funcionando no celular.

Segundo a propria documentacao do MIT App Inventor, a ferramenta permite criar aplicativos para celulares e tablets diretamente pelo navegador (MASSACHUSETTS INSTITUTE OF TECHNOLOGY, 2025a). Ela tambem foi pensada para tornar o desenvolvimento de software mais acessivel, principalmente para estudantes e iniciantes (MASSACHUSETTS INSTITUTE OF TECHNOLOGY, 2025b).

Na pratica, o App Inventor pode ser usado para criar aplicativos simples ou intermediarios, como calculadoras, jogos, agendas, listas de tarefas, aplicativos educativos, cadastros e prototipos. Suas principais vantagens para iniciantes sao:

- nao exige conhecimento avancado de linguagem de programacao;
- usa blocos visuais, o que diminui erros de sintaxe;
- permite testar o app no celular durante o desenvolvimento;
- possui componentes prontos, como botoes, caixas de texto, banco de dados local, sensores e conexao com a internet;
- ajuda a entender logica de programacao de um jeito mais direto.

## 2. O que e o TinyDB?

O TinyDB e um componente de armazenamento do MIT App Inventor. Ele serve para guardar informacoes no proprio dispositivo, de forma persistente. Isso significa que os dados continuam salvos mesmo depois que o usuario fecha o aplicativo e abre novamente.

A documentacao oficial explica que os aplicativos criados no App Inventor sao inicializados novamente a cada execucao. Portanto, se o app guardar uma informacao apenas em uma variavel comum, essa informacao sera perdida quando o aplicativo for fechado. O TinyDB resolve esse problema porque funciona como um pequeno armazenamento permanente do app (MASSACHUSETTS INSTITUTE OF TECHNOLOGY, 2024a).

Os dados ficam armazenados localmente no dispositivo do usuario. Assim, o aplicativo nao precisa de internet para salvar ou recuperar essas informacoes. Um exemplo simples e um jogo que guarda a maior pontuacao do jogador. Mesmo depois de fechar o app, a pontuacao continua salva para ser exibida na proxima vez.

### Vantagens do TinyDB

- funciona sem internet;
- e simples de usar;
- salva dados de forma persistente;
- e adequado para informacoes pequenas e medias;
- pode ser usado em aplicativos simples, como listas, cadastros e configuracoes.

### Limitacoes do TinyDB

- os dados ficam apenas no aparelho onde o app foi instalado;
- nao serve para compartilhar dados entre usuarios diferentes;
- nao e indicado para grandes bancos de dados;
- se o aplicativo for desinstalado, os dados podem ser perdidos;
- durante testes no Companion, diferentes projetos podem compartilhar o mesmo TinyDB, por isso e preciso tomar cuidado e limpar dados antigos quando necessario (MASSACHUSETTS INSTITUTE OF TECHNOLOGY, 2024a).

## 3. Funcionamento do TinyDB

O TinyDB trabalha com a ideia de **tag** e **valor**. A tag funciona como uma chave ou nome usado para identificar a informacao. O valor e o dado que fica guardado nessa tag.

Por exemplo:

| Tag | Valor armazenado |
| --- | --- |
| `nomeUsuario` | `Ana` |
| `pontuacaoMaxima` | `1500` |
| `listaCompras` | `["arroz", "feijao", "leite"]` |

De acordo com a documentacao do MIT App Inventor, cada item armazenado no TinyDB e formado por uma tag e um valor. Para salvar uma informacao, e necessario indicar em qual tag ela sera guardada. Depois, o aplicativo pode buscar o valor usando a mesma tag (MASSACHUSETTS INSTITUTE OF TECHNOLOGY, 2024a).

### Gravacao de informacoes

Para gravar uma informacao, usa-se o bloco `StoreValue`. Ele recebe dois dados:

- a tag, que identifica a informacao;
- o valor que sera salvo.

Exemplo: em uma tela de cadastro simples, o usuario digita seu nome em uma caixa de texto. Ao clicar no botao "Salvar", o app pode guardar:

- tag: `nomeUsuario`;
- valor: texto digitado pelo usuario.

Assim, na proxima vez que o app abrir, o nome ainda estara salvo.

### Leitura de informacoes

Para ler uma informacao, usa-se o bloco `GetValue`. O aplicativo informa a tag desejada e tambem um valor padrao, caso aquela tag ainda nao exista.

Exemplo:

- buscar a tag `nomeUsuario`;
- se ela existir, mostrar o nome salvo;
- se nao existir, mostrar uma mensagem como "Usuario nao cadastrado".

Esse valor padrao e importante porque evita erro quando o app tenta buscar uma informacao que ainda nao foi cadastrada.
