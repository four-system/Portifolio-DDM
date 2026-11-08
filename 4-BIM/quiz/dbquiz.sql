-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/11/2026 às 23:03
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbquiz`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `barroco`
--

CREATE TABLE `barroco` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `alternativa_a` varchar(150) NOT NULL,
  `alternativa_b` varchar(150) NOT NULL,
  `alternativa_c` varchar(150) NOT NULL,
  `alternativa_d` varchar(150) NOT NULL,
  `correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `barroco`
--

INSERT INTO `barroco` (`id`, `pergunta`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `correta`) VALUES
(1, 'Qual característica é mais associada ao Barroco?', 'Simplicidade e ausência de ornamentação', 'Dramaticidade, movimento e contrastes', 'Geometria abstrata', 'Representação exclusivamente científica', 'B'),
(2, 'Qual artista ficou conhecido pelo uso dramático de luz e sombra, chamado chiaroscuro?', 'Claude Monet', 'Caravaggio', 'Pablo Picasso', 'Rafael Sanzio', 'B'),
(3, 'Qual artista brasileiro é um dos principais nomes do Barroco mineiro?', 'Aleijadinho', 'Tarsila do Amaral', 'Di Cavalcanti', 'Anita Malfatti', 'A'),
(4, 'Qual era uma das funções da arte barroca durante a Contrarreforma?', 'Fortalecer a fé católica por meio de imagens expressivas', 'Eliminar as representações religiosas', 'Defender exclusivamente a ciência', 'Criticar toda forma de religião', 'A'),
(5, 'Quem criou a escultura O Êxtase de Santa Teresa?', 'Michelangelo', 'Bernini', 'Donatello', 'Rodin', 'B'),
(6, 'Qual característica é marcante no estilo Rococó?', 'Cenas delicadas, ornamentação e cores suaves', 'Formas industriais e geométricas', 'Representações de guerras e revoluções', 'Ausência completa de decoração', 'A'),
(7, 'O Rococó surgiu historicamente após qual estilo?', 'Impressionismo', 'Cubismo', 'Barroco', 'Expressionismo', 'C'),
(8, 'Qual era a principal inspiração do Neoclassicismo?', 'A cultura greco-romana', 'A arte africana contemporânea', 'O surrealismo', 'A cultura industrial', 'A'),
(9, 'Qual artista brasileiro ficou conhecido por suas esculturas religiosas em Congonhas, Minas Gerais?', 'Aleijadinho', 'Victor Meirelles', 'Portinari', 'Lasar Segall', 'A'),
(10, 'Qual artista é conhecido por pinturas barrocas como A Vocação de São Mateus?', 'Caravaggio', 'Claude Monet', 'Salvador Dalí', 'Paul Cézanne', 'A'),
(11, 'Qual contraste visual é muito utilizado na pintura barroca?', 'Contraste entre luz e sombra', 'Contraste entre fotografia e cinema', 'Contraste entre texto e música', 'Contraste entre linhas horizontais e verticais apenas', 'A'),
(12, 'Qual artista neoclássico pintou A Morte de Marat?', 'Jacques-Louis David', 'Peter Paul Rubens', 'Rembrandt', 'Francisco Goya', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `alternativa_a` varchar(150) NOT NULL,
  `alternativa_b` varchar(150) NOT NULL,
  `alternativa_c` varchar(150) NOT NULL,
  `alternativa_d` varchar(150) NOT NULL,
  `correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perguntas`
--

INSERT INTO `perguntas` (`id`, `pergunta`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `correta`) VALUES
(1, 'Qual característica é mais associada ao Barroco?', 'Simplicidade e ausência de ornamentação', 'Dramaticidade, movimento e contrastes', 'Geometria abstrata', 'Representação exclusivamente científica', 'B'),
(2, 'Qual artista ficou conhecido pelo uso dramático de luz e sombra, chamado chiaroscuro?', 'Claude Monet', 'Caravaggio', 'Pablo Picasso', 'Rafael Sanzio', 'B'),
(3, 'Qual artista brasileiro é um dos principais nomes do Barroco mineiro?', 'Aleijadinho', 'Tarsila do Amaral', 'Di Cavalcanti', 'Anita Malfatti', 'A'),
(4, 'Qual era uma das funções da arte barroca durante a Contrarreforma?', 'Fortalecer a fé católica por meio de imagens expressivas', 'Eliminar as representações religiosas', 'Defender exclusivamente a ciência', 'Criticar toda forma de religião', 'A'),
(5, 'Quem criou a escultura O Êxtase de Santa Teresa?', 'Michelangelo', 'Bernini', 'Donatello', 'Rodin', 'B'),
(6, 'Qual característica é marcante no estilo Rococó?', 'Cenas delicadas, ornamentação e cores suaves', 'Formas industriais e geométricas', 'Representações de guerras e revoluções', 'Ausência completa de decoração', 'A'),
(7, 'O Rococó surgiu historicamente após qual estilo?', 'Impressionismo', 'Cubismo', 'Barroco', 'Expressionismo', 'C'),
(8, 'Qual era a principal inspiração do Neoclassicismo?', 'A cultura greco-romana', 'A arte africana contemporânea', 'O surrealismo', 'A cultura industrial', 'A'),
(9, 'Qual artista brasileiro ficou conhecido por suas esculturas religiosas em Congonhas, Minas Gerais?', 'Aleijadinho', 'Victor Meirelles', 'Portinari', 'Lasar Segall', 'A'),
(10, 'Qual artista é conhecido por pinturas barrocas como A Vocação de São Mateus?', 'Caravaggio', 'Claude Monet', 'Salvador Dalí', 'Paul Cézanne', 'A'),
(11, 'Qual contraste visual é muito utilizado na pintura barroca?', 'Contraste entre luz e sombra', 'Contraste entre fotografia e cinema', 'Contraste entre texto e música', 'Contraste entre linhas horizontais e verticais apenas', 'A'),
(12, 'Qual artista neoclássico pintou A Morte de Marat?', 'Jacques-Louis David', 'Peter Paul Rubens', 'Rembrandt', 'Francisco Goya', 'A'),
(13, 'Qual movimento artístico valorizava a emoção, a imaginação e a subjetividade?', 'Neoclassicismo', 'Romantismo', 'Cubismo', 'Realismo', 'B'),
(14, 'Qual artista pintou A Liberdade Guiando o Povo?', 'Eugène Delacroix', 'Claude Monet', 'Édouard Manet', 'Vincent van Gogh', 'A'),
(15, 'Qual movimento buscava representar a realidade social sem idealizações?', 'Romantismo', 'Realismo', 'Surrealismo', 'Futurismo', 'B'),
(16, 'Qual pintor é associado à obra Os Quebradores de Pedras?', 'Gustave Courbet', 'Salvador Dalí', 'Pablo Picasso', 'Claude Monet', 'A'),
(17, 'Qual característica define principalmente o Impressionismo?', 'Captura dos efeitos da luz e das cores em diferentes momentos', 'Uso exclusivo de temas religiosos', 'Representação de formas geométricas rígidas', 'Ausência de observação da natureza', 'A'),
(18, 'Quem pintou a série de obras sobre a Catedral de Rouen?', 'Vincent van Gogh', 'Claude Monet', 'Paul Cézanne', 'Edgar Degas', 'B'),
(19, 'Qual artista impressionista ficou conhecido por representar bailarinas?', 'Edgar Degas', 'Salvador Dalí', 'Pablo Picasso', 'Gustave Courbet', 'A'),
(20, 'Qual artista pintou a obra Impressão, nascer do sol, que deu nome ao Impressionismo?', 'Claude Monet', 'Édouard Manet', 'Pierre-Auguste Renoir', 'Paul Gauguin', 'A'),
(21, 'Qual era uma característica comum dos pintores realistas?', 'Representar o cotidiano e os problemas sociais', 'Representar somente seres mitológicos', 'Priorizar sonhos e fantasias', 'Utilizar apenas formas abstratas', 'A'),
(22, 'Qual artista é conhecido pela pintura A Balsa da Medusa?', 'Théodore Géricault', 'Claude Monet', 'Paul Cézanne', 'Auguste Renoir', 'A'),
(23, 'Qual artista pós-impressionista pintou a obra Noite Estrelada?', 'Vincent van Gogh', 'Edgar Degas', 'Gustave Courbet', 'Jacques-Louis David', 'A'),
(24, 'Qual foi uma importante inovação dos impressionistas?', 'Pintar frequentemente ao ar livre para observar mudanças de luz', 'Eliminar completamente as cores das pinturas', 'Utilizar apenas técnicas de escultura', 'Abandonar a representação de paisagens', 'A'),
(25, 'Quais são considerados os três grandes mestres do Renascimento italiano?', 'Leonardo da Vinci, Michelangelo e Rafael', 'Donatello, Botticelli e Caravaggio', 'Rembrandt, Rafael e Monet', 'Picasso, Dalí e Michelangelo', 'A'),
(26, 'Qual conceito filosófico valorizava o ser humano como centro das reflexões?', 'Teocentrismo', 'Humanismo', 'Existencialismo', 'Naturalismo', 'B'),
(27, 'Qual artista desenvolveu estudos sobre anatomia, engenharia e proporções humanas?', 'Rafael Sanzio', 'Sandro Botticelli', 'Leonardo da Vinci', 'Donatello', 'C'),
(28, 'Quem pintou A Escola de Atenas?', 'Rafael Sanzio', 'Leonardo da Vinci', 'Michelangelo', 'Sandro Botticelli', 'A'),
(29, 'Qual técnica Leonardo da Vinci utilizava para criar transições suaves entre cores e sombras?', 'Pontilhismo', 'Sfumato', 'Xilogravura', 'Futurismo', 'B'),
(30, 'Qual obra de Michelangelo está localizada no teto da Capela Sistina?', 'A Última Ceia', 'A Primavera', 'A Criação de Adão', 'O Nascimento de Vênus', 'C'),
(31, 'Qual artista esculpiu a famosa obra David, em mármore, no início do século XVI?', 'Bernini', 'Donatello', 'Auguste Rodin', 'Michelangelo', 'D'),
(32, 'Qual família teve grande influência no desenvolvimento artístico do Renascimento em Florença?', 'Bourbon', 'Medici', 'Habsburgo', 'Tudor', 'B'),
(33, 'Qual característica artística permitiu representar profundidade e distância de forma mais realista?', 'Perspectiva linear', 'Colagem', 'Abstração', 'Monocromia', 'A'),
(34, 'Qual artista pintou O Nascimento de Vênus?', 'Sandro Botticelli', 'Caravaggio', 'Rafael Sanzio', 'Michelangelo', 'A'),
(35, 'Qual era uma das principais fontes de inspiração dos artistas renascentistas?', 'Apenas a cultura medieval', 'A arte e a filosofia da Antiguidade greco-romana', 'A cultura industrial', 'Exclusivamente a arte oriental', 'B'),
(36, 'Qual artista renascentista pintou a Mona Lisa?', 'Rafael Sanzio', 'Michelangelo', 'Leonardo da Vinci', 'Ticiano', 'C'),
(37, 'O antropocentrismo renascentista defendia principalmente que:', 'Deus deveria ser retirado de toda forma de arte', 'O ser humano deveria ser valorizado como centro das reflexões', 'A natureza não deveria ser estudada', 'A religião deveria ser substituída pela mitologia', 'B'),
(38, 'Qual movimento artístico teve Pablo Picasso e Georges Braque como dois de seus principais representantes?', 'Surrealismo', 'Cubismo', 'Futurismo', 'Expressionismo', 'B'),
(39, 'Qual é uma característica fundamental do Cubismo?', 'Representar diferentes pontos de vista em uma mesma composição', 'Representar a realidade de maneira fotográfica', 'Utilizar exclusivamente paisagens naturais', 'Eliminar completamente as formas geométricas', 'A'),
(40, 'Quem escreveu o Manifesto Surrealista em 1924?', 'André Breton', 'Pablo Picasso', 'Salvador Dalí', 'Filippo Marinetti', 'A'),
(41, 'Qual movimento artístico explorava os sonhos e o inconsciente?', 'Realismo', 'Surrealismo', 'Neoclassicismo', 'Futurismo', 'B'),
(42, 'Qual artista criou A Traição das Imagens, que apresenta a frase Isto não é um cachimbo?', 'René Magritte', 'Salvador Dalí', 'Joan Miró', 'Max Ernst', 'A'),
(43, 'Qual movimento defendia a velocidade, a tecnologia e a modernidade?', 'Futurismo', 'Romantismo', 'Barroco', 'Realismo', 'A'),
(44, 'Qual artista é considerado um dos principais representantes do Expressionismo alemão?', 'Ernst Ludwig Kirchner', 'Claude Monet', 'Rafael Sanzio', 'Andy Warhol', 'A'),
(45, 'Em qual ano aconteceu a Semana de Arte Moderna no Brasil?', '1889', '1922', '1930', '1945', 'B'),
(46, 'Qual artista pintou Abaporu, obra associada ao movimento antropofágico?', 'Anita Malfatti', 'Tarsila do Amaral', 'Lygia Clark', 'Di Cavalcanti', 'B'),
(47, 'Quem escreveu o Manifesto Antropófago, publicado em 1928?', 'Mário de Andrade', 'Oswald de Andrade', 'Manuel Bandeira', 'Carlos Drummond de Andrade', 'B'),
(48, 'Qual era a proposta central do movimento antropofágico brasileiro?', 'Copiar integralmente a cultura europeia', 'Rejeitar todas as influências estrangeiras', 'Assimilar influências estrangeiras e transformá-las em algo brasileiro', 'Eliminar as manifestações culturais populares', 'C'),
(49, 'Qual artista brasileiro ficou conhecido pela obra Operários?', 'Candido Portinari', 'Tarsila do Amaral', 'Anita Malfatti', 'Di Cavalcanti', 'B'),
(50, 'Qual artista criou obras associadas à Pop Art, incluindo representações de latas de sopa Campbell?', 'Andy Warhol', 'Wassily Kandinsky', 'Edvard Munch', 'Auguste Rodin', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `realismo_romantismo`
--

CREATE TABLE `realismo_romantismo` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `alternativa_a` varchar(150) NOT NULL,
  `alternativa_b` varchar(150) NOT NULL,
  `alternativa_c` varchar(150) NOT NULL,
  `alternativa_d` varchar(150) NOT NULL,
  `correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `realismo_romantismo`
--

INSERT INTO `realismo_romantismo` (`id`, `pergunta`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `correta`) VALUES
(1, 'Qual movimento artístico valorizava a emoção, a imaginação e a subjetividade?', 'Neoclassicismo', 'Romantismo', 'Cubismo', 'Realismo', 'B'),
(2, 'Qual artista pintou A Liberdade Guiando o Povo?', 'Eugène Delacroix', 'Claude Monet', 'Édouard Manet', 'Vincent van Gogh', 'A'),
(3, 'Qual movimento buscava representar a realidade social sem idealizações?', 'Romantismo', 'Realismo', 'Surrealismo', 'Futurismo', 'B'),
(4, 'Qual pintor é associado à obra Os Quebradores de Pedras?', 'Gustave Courbet', 'Salvador Dalí', 'Pablo Picasso', 'Claude Monet', 'A'),
(5, 'Qual característica define principalmente o Impressionismo?', 'Captura dos efeitos da luz e das cores em diferentes momentos', 'Uso exclusivo de temas religiosos', 'Representação de formas geométricas rígidas', 'Ausência de observação da natureza', 'A'),
(6, 'Quem pintou a série de obras sobre a Catedral de Rouen?', 'Vincent van Gogh', 'Claude Monet', 'Paul Cézanne', 'Edgar Degas', 'B'),
(7, 'Qual artista impressionista ficou conhecido por representar bailarinas?', 'Edgar Degas', 'Salvador Dalí', 'Pablo Picasso', 'Gustave Courbet', 'A'),
(8, 'Qual artista pintou a obra Impressão, nascer do sol, que deu nome ao Impressionismo?', 'Claude Monet', 'Édouard Manet', 'Pierre-Auguste Renoir', 'Paul Gauguin', 'A'),
(9, 'Qual era uma característica comum dos pintores realistas?', 'Representar o cotidiano e os problemas sociais', 'Representar somente seres mitológicos', 'Priorizar sonhos e fantasias', 'Utilizar apenas formas abstratas', 'A'),
(10, 'Qual artista é conhecido pela pintura A Balsa da Medusa?', 'Théodore Géricault', 'Claude Monet', 'Paul Cézanne', 'Auguste Renoir', 'A'),
(11, 'Qual artista pós-impressionista pintou a obra Noite Estrelada?', 'Vincent van Gogh', 'Edgar Degas', 'Gustave Courbet', 'Jacques-Louis David', 'A'),
(12, 'Qual foi uma importante inovação dos impressionistas?', 'Pintar frequentemente ao ar livre para observar mudanças de luz', 'Eliminar completamente as cores das pinturas', 'Utilizar apenas técnicas de escultura', 'Abandonar a representação de paisagens', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `renascimento`
--

CREATE TABLE `renascimento` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `alternativa_a` varchar(150) NOT NULL,
  `alternativa_b` varchar(150) NOT NULL,
  `alternativa_c` varchar(150) NOT NULL,
  `alternativa_d` varchar(150) NOT NULL,
  `correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `renascimento`
--

INSERT INTO `renascimento` (`id`, `pergunta`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `correta`) VALUES
(1, 'Quais são considerados os três grandes mestres do Renascimento italiano?', 'Leonardo da Vinci, Michelangelo e Rafael', 'Donatello, Botticelli e Caravaggio', 'Rembrandt, Rafael e Monet', 'Picasso, Dalí e Michelangelo', 'A'),
(2, 'Qual conceito filosófico valorizava o ser humano como centro das reflexões?', 'Teocentrismo', 'Humanismo', 'Existencialismo', 'Naturalismo', 'B'),
(3, 'Qual artista desenvolveu estudos sobre anatomia, engenharia e proporções humanas?', 'Rafael Sanzio', 'Sandro Botticelli', 'Leonardo da Vinci', 'Donatello', 'C'),
(4, 'Quem pintou A Escola de Atenas?', 'Rafael Sanzio', 'Leonardo da Vinci', 'Michelangelo', 'Sandro Botticelli', 'A'),
(5, 'Qual técnica Leonardo da Vinci utilizava para criar transições suaves entre cores e sombras?', 'Pontilhismo', 'Sfumato', 'Xilogravura', 'Futurismo', 'B'),
(6, 'Qual obra de Michelangelo está localizada no teto da Capela Sistina?', 'A Última Ceia', 'A Primavera', 'A Criação de Adão', 'O Nascimento de Vênus', 'C'),
(7, 'Qual artista esculpiu a famosa obra David, em mármore, no início do século XVI?', 'Bernini', 'Donatello', 'Auguste Rodin', 'Michelangelo', 'D'),
(8, 'Qual família teve grande influência no desenvolvimento artístico do Renascimento em Florença?', 'Bourbon', 'Medici', 'Habsburgo', 'Tudor', 'B'),
(9, 'Qual característica artística permitiu representar profundidade e distância de forma mais realista?', 'Perspectiva linear', 'Colagem', 'Abstração', 'Monocromia', 'A'),
(10, 'Qual artista pintou O Nascimento de Vênus?', 'Sandro Botticelli', 'Caravaggio', 'Rafael Sanzio', 'Michelangelo', 'A'),
(11, 'Qual era uma das principais fontes de inspiração dos artistas renascentistas?', 'Apenas a cultura medieval', 'A arte e a filosofia da Antiguidade greco-romana', 'A cultura industrial', 'Exclusivamente a arte oriental', 'B'),
(12, 'Qual artista renascentista pintou a Mona Lisa?', 'Rafael Sanzio', 'Michelangelo', 'Leonardo da Vinci', 'Ticiano', 'C'),
(13, 'O antropocentrismo renascentista defendia principalmente que:', 'Deus deveria ser retirado de toda forma de arte', 'O ser humano deveria ser valorizado como centro das reflexões', 'A natureza não deveria ser estudada', 'A religião deveria ser substituída pela mitologia', 'B');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vanguardas_modernismo`
--

CREATE TABLE `vanguardas_modernismo` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `alternativa_a` varchar(150) NOT NULL,
  `alternativa_b` varchar(150) NOT NULL,
  `alternativa_c` varchar(150) NOT NULL,
  `alternativa_d` varchar(150) NOT NULL,
  `correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vanguardas_modernismo`
--

INSERT INTO `vanguardas_modernismo` (`id`, `pergunta`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `correta`) VALUES
(1, 'Qual movimento artístico teve Pablo Picasso e Georges Braque como dois de seus principais representantes?', 'Surrealismo', 'Cubismo', 'Futurismo', 'Expressionismo', 'B'),
(2, 'Qual é uma característica fundamental do Cubismo?', 'Representar diferentes pontos de vista em uma mesma composição', 'Representar a realidade de maneira fotográfica', 'Utilizar exclusivamente paisagens naturais', 'Eliminar completamente as formas geométricas', 'A'),
(3, 'Quem escreveu o Manifesto Surrealista em 1924?', 'André Breton', 'Pablo Picasso', 'Salvador Dalí', 'Filippo Marinetti', 'A'),
(4, 'Qual movimento artístico explorava os sonhos e o inconsciente?', 'Realismo', 'Surrealismo', 'Neoclassicismo', 'Futurismo', 'B'),
(5, 'Qual artista criou A Traição das Imagens, que apresenta a frase Isto não é um cachimbo?', 'René Magritte', 'Salvador Dalí', 'Joan Miró', 'Max Ernst', 'A'),
(6, 'Qual movimento defendia a velocidade, a tecnologia e a modernidade?', 'Futurismo', 'Romantismo', 'Barroco', 'Realismo', 'A'),
(7, 'Qual artista é considerado um dos principais representantes do Expressionismo alemão?', 'Ernst Ludwig Kirchner', 'Claude Monet', 'Rafael Sanzio', 'Andy Warhol', 'A'),
(8, 'Em qual ano aconteceu a Semana de Arte Moderna no Brasil?', '1889', '1922', '1930', '1945', 'B'),
(9, 'Qual artista pintou Abaporu, obra associada ao movimento antropofágico?', 'Anita Malfatti', 'Tarsila do Amaral', 'Lygia Clark', 'Di Cavalcanti', 'B'),
(10, 'Quem escreveu o Manifesto Antropófago, publicado em 1928?', 'Mário de Andrade', 'Oswald de Andrade', 'Manuel Bandeira', 'Carlos Drummond de Andrade', 'B'),
(11, 'Qual era a proposta central do movimento antropofágico brasileiro?', 'Copiar integralmente a cultura europeia', 'Rejeitar todas as influências estrangeiras', 'Assimilar influências estrangeiras e transformá-las em algo brasileiro', 'Eliminar as manifestações culturais populares', 'C'),
(12, 'Qual artista brasileiro ficou conhecido pela obra Operários?', 'Candido Portinari', 'Tarsila do Amaral', 'Anita Malfatti', 'Di Cavalcanti', 'B'),
(13, 'Qual artista criou obras associadas à Pop Art, incluindo representações de latas de sopa Campbell?', 'Andy Warhol', 'Wassily Kandinsky', 'Edvard Munch', 'Auguste Rodin', 'A');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `barroco`
--
ALTER TABLE `barroco`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `realismo_romantismo`
--
ALTER TABLE `realismo_romantismo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `renascimento`
--
ALTER TABLE `renascimento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vanguardas_modernismo`
--
ALTER TABLE `vanguardas_modernismo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `barroco`
--
ALTER TABLE `barroco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `realismo_romantismo`
--
ALTER TABLE `realismo_romantismo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `renascimento`
--
ALTER TABLE `renascimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `vanguardas_modernismo`
--
ALTER TABLE `vanguardas_modernismo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
