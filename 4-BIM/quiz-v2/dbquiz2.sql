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
-- Banco de dados: `dbquiz2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `impressionismo`
--

CREATE TABLE `impressionismo` (
  `id` int(11) NOT NULL,
  `pergunta` text NOT NULL,
  `alternativa_a` text NOT NULL,
  `alternativa_b` text NOT NULL,
  `alternativa_c` text NOT NULL,
  `alternativa_d` text NOT NULL,
  `correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `impressionismo`
--

INSERT INTO `impressionismo` (`id`, `pergunta`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `correta`) VALUES
(1, 'Em qual país surgiu o Impressionismo?', 'Itália', 'França', 'Espanha', 'Alemanha', 'B'),
(2, 'Qual era uma das principais características do Impressionismo?', 'Representar cenas mitológicas', 'Utilizar apenas cores escuras', 'Capturar a luz e os momentos do cotidiano', 'Evitar pinturas ao ar livre', 'C'),
(3, 'Qual artista pintou Impressão, nascer do sol?', 'Claude Monet', 'Pablo Picasso', 'Vincent van Gogh', 'Michelangelo', 'A'),
(4, 'Qual obra deu nome ao movimento Impressionista?', 'A Noite Estrelada', 'Impressão, nascer do sol', 'O Grito', 'Mona Lisa', 'B'),
(5, 'Qual artista é um dos principais representantes do Impressionismo?', 'Leonardo da Vinci', 'Salvador Dalí', 'Claude Monet', 'Caravaggio', 'C'),
(6, 'Como os impressionistas costumavam representar a luz?', 'Com cores variadas e pinceladas rápidas', 'Usando somente preto e branco', 'Evitando contrastes', 'Utilizando apenas sombras fortes', 'A'),
(7, 'Qual era um tema comum nas pinturas impressionistas?', 'Guerras medievais', 'Cenas do cotidiano', 'Criaturas mitológicas', 'Histórias bíblicas exclusivamente', 'B'),
(8, 'Qual artista impressionista ficou conhecido por pintar bailarinas?', 'Edgar Degas', 'Auguste Rodin', 'Andy Warhol', 'Tarsila do Amaral', 'A'),
(9, 'O que os artistas impressionistas buscavam registrar?', 'A aparência exata dos objetos', 'A impressão visual de um momento', 'Apenas acontecimentos históricos', 'Figuras perfeitamente simétricas', 'B'),
(10, 'Qual técnica era bastante utilizada pelos impressionistas?', 'Pinceladas curtas e visíveis', 'Esculturas em mármore', 'Desenhos exclusivamente geométricos', 'Pintura sem mistura de cores', 'A'),
(11, 'Qual artista ficou conhecido por pintar jardins e nenúfares?', 'Pierre-Auguste Renoir', 'Claude Monet', 'Édouard Manet', 'Paul Cézanne', 'B'),
(12, 'Por que os impressionistas gostavam de pintar ao ar livre?', 'Para evitar o uso de tintas', 'Para observar as mudanças naturais da luz', 'Para pintar somente paisagens urbanas', 'Para seguir regras acadêmicas', 'B'),
(13, 'Qual artista ficou conhecido por pinturas de cenas sociais e momentos de lazer?', 'Pierre-Auguste Renoir', 'Michelangelo', 'René Magritte', 'Wassily Kandinsky', 'A'),
(14, 'Como eram geralmente as pinceladas impressionistas?', 'Invisíveis e uniformes', 'Rápidas e aparentes', 'Exclusivamente linhas retas', 'Sempre muito detalhadas', 'B'),
(15, 'Qual era a relação dos impressionistas com a pintura acadêmica?', 'Seguiam todas as suas regras', 'Buscavam novas formas de pintar', 'Não utilizavam cores', 'Pintavam apenas retratos oficiais', 'B'),
(16, 'Qual artista é conhecido pela obra A Aula de Dança?', 'Edgar Degas', 'Claude Monet', 'Vincent van Gogh', 'Pablo Picasso', 'A'),
(17, 'Qual elemento natural recebia grande atenção nas obras impressionistas?', 'A luz solar', 'O movimento das placas tectônicas', 'A formação de minerais', 'A estrutura das rochas', 'A'),
(18, 'Qual artista impressionista ficou conhecido por suas pinturas de paisagens?', 'Camille Pissarro', 'Donatello', 'Bernini', 'Auguste Rodin', 'A'),
(19, 'O Impressionismo valorizava principalmente:', 'A representação de emoções religiosas', 'A percepção visual e as sensações de um instante', 'A perfeição das formas clássicas', 'A reprodução de esculturas antigas', 'B'),
(20, 'Qual foi uma contribuição do Impressionismo para a história da arte?', 'O retorno à arte medieval', 'A criação da pintura em mármore', 'A abertura de caminhos para a arte moderna', 'O fim do uso das cores', 'C'),
(21, 'Em que século surgiu o Impressionismo?', 'Século XV', 'Século XVI', 'Século XIX', 'Século XX', 'C'),
(22, 'Qual artista impressionista ficou conhecido por suas pinturas de paisagens e cenas urbanas de Paris?', 'Camille Pissarro', 'Michelangelo', 'Pablo Picasso', 'Salvador Dalí', 'A'),
(23, 'Qual era a importância das cores nas pinturas impressionistas?', 'Representar apenas objetos religiosos', 'Criar efeitos de luz e sensações visuais', 'Esconder os detalhes das pinturas', 'Deixar todas as obras com tons escuros', 'B'),
(24, 'Qual artista impressionista pintou a série de obras da Catedral de Rouen?', 'Edgar Degas', 'Pierre-Auguste Renoir', 'Claude Monet', 'Édouard Manet', 'C'),
(25, 'Como os impressionistas geralmente retratavam as sombras?', 'Sempre utilizando apenas a cor preta', 'Com diferentes cores e variações de tonalidade', 'Eliminando completamente as sombras', 'Utilizando somente tons de cinza', 'B'),
(26, 'Qual artista ficou conhecido por pintar cenas de dança e apresentações de balé?', 'Edgar Degas', 'Claude Monet', 'Camille Pissarro', 'Paul Gauguin', 'A'),
(27, 'Qual mudança tecnológica ajudou os impressionistas a pintar ao ar livre?', 'A invenção da fotografia digital', 'A criação de tintas em tubos portáteis', 'O surgimento dos computadores', 'A invenção da televisão', 'B'),
(28, 'Qual era a principal diferença entre a pintura impressionista e a acadêmica tradicional?', 'O Impressionismo valorizava mais a espontaneidade e os efeitos da luz', 'O Impressionismo utilizava somente esculturas', 'A pintura acadêmica não utilizava cores', 'Os impressionistas pintavam exclusivamente figuras históricas', 'A'),
(29, 'Qual artista ficou conhecido por pintar cenas de banhistas e paisagens?', 'Pierre-Auguste Renoir', 'Caravaggio', 'Donatello', 'Andy Warhol', 'A'),
(30, 'Como a fotografia influenciou os artistas impressionistas?', 'Fez com que abandonassem completamente a pintura', 'Incentivou novas formas de observar e registrar momentos', 'Impediu a criação de paisagens', 'Eliminou a necessidade de utilizar cores', 'B');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `impressionismo`
--
ALTER TABLE `impressionismo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `impressionismo`
--
ALTER TABLE `impressionismo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
