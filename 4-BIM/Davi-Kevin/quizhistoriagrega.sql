-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/11/2026 às 23:39
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
-- Banco de dados: `quizhistoriagrega`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `id` int(11) NOT NULL,
  `pergunta` text NOT NULL,
  `alternativa_a` text NOT NULL,
  `alternativa_b` text NOT NULL,
  `alternativa_c` text NOT NULL,
  `alternativa_d` text NOT NULL,
  `correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perguntas`
--

INSERT INTO `perguntas` (`id`, `pergunta`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `correta`) VALUES
(1, 'Em qual península se localizava majoritariamente a Grécia Antiga?', 'Península Ibérica', 'Península Balcânica', 'Península Itálica', 'Península da Anatólia', 'B'),
(2, 'Como eram organizadas politicamente as cidades da Grécia Antiga?', 'Em um império centralizado', 'Em cidades-Estado independentes (pólis)', 'Em feudos medievais', 'Em tribos nômades', 'B'),
(3, 'Qual cidade-Estado grega ficou conhecida como o berço da democracia?', 'Esparta', 'Tebas', 'Atenas', 'Corinto', 'C'),
(4, 'Qual cidade-Estado grega tinha sociedade fortemente militarizada e voltada para a guerra?', 'Atenas', 'Esparta', 'Miletos', 'Delfos', 'B'),
(5, 'Qual era o espaço público central das cidades gregas usado para debates e comércio?', 'Acrópole', 'Ágora', 'Estádio', 'Ginásio', 'B'),
(6, 'O que era a acrópole na Grécia Antiga?', 'A parte mais alta e fortificada da cidade', 'Um tipo de embarcação de guerra', 'A assembleia dos cidadãos', 'Um imposto pago pelos estrangeiros', 'A'),
(7, 'Quem eram considerados cidadãos em Atenas no período clássico?', 'Todos os habitantes da cidade', 'Apenas homens livres, maiores de idade e filhos de pais atenienses', 'Homens livres e mulheres proprietárias', 'Todos os homens adultos, incluindo estrangeiros e escravizados', 'B'),
(8, 'Como eram chamados os estrangeiros residentes em Atenas sem direitos políticos?', 'Hilotas', 'Metecos', 'Escravizados', 'Éforos', 'B'),
(9, 'Qual grupo formava a base do trabalho forçado em Esparta?', 'Metecos', 'Hilotas', 'Arcontes', 'Sofistas', 'B'),
(10, 'Qual legislador ateniense ficou famoso por criar leis severas no século VII a.C.?', 'Sólon', 'Drácon', 'Clístenes', 'Péricles', 'B'),
(11, 'Qual governante ateniense ampliou a participação popular e reformou as tribos no fim do século VI a.C.?', 'Drácon', 'Clístenes', 'Leônidas', 'Fídias', 'B'),
(12, 'Qual líder conduziu o apogeu cultural e político de Atenas no século V a.C.?', 'Péricles', 'Filipe II', 'Alexandre, o Grande', 'Sócrates', 'A'),
(13, 'O que foi o ostracismo em Atenas?', 'A proibição do comércio marítimo', 'O exílio temporário de alguém considerado ameaça à democracia', 'A obrigação de servir no exército por vinte anos', 'A venda de terras públicas a estrangeiros', 'B'),
(14, 'Quais foram os principais adversários de Atenas e das cidades gregas nas Guerras Médicas?', 'O Império Romano', 'O Império Persa', 'Os cartagineses', 'Os fenícios', 'B'),
(15, 'Qual batalha das Guerras Médicas ficou célebre pela resistência do rei espartano Leônidas?', 'Batalha de Maratona', 'Batalha das Termópilas', 'Batalha de Salamina', 'Batalha de Plateias', 'B'),
(16, 'Qual batalha naval das Guerras Médicas foi uma grande vitória da frota grega liderada por Atenas?', 'Salamina', 'Queroneia', 'Issos', 'Gaugamela', 'A'),
(17, 'O que foi a Liga de Delos?', 'Uma aliança militar liderada por Esparta', 'Uma aliança naval liderada por Atenas após as Guerras Médicas', 'Um tratado de paz entre gregos e romanos', 'Um tribunal religioso em Delfos', 'B'),
(18, 'Qual conflito opôs principalmente a Liga de Delos (Atenas) e a Liga do Peloponeso (Esparta)?', 'Guerras Médicas', 'Guerra do Peloponeso', 'Guerras Púnicas', 'Guerras Macedônicas', 'B'),
(19, 'Qual foi o desfecho geral da Guerra do Peloponeso (431–404 a.C.)?', 'Vitória de Atenas e domínio total sobre a Grécia', 'Vitória de Esparta e enfraquecimento das cidades-Estado gregas', 'Unificação imediata sob o domínio romano', 'Fim da escravidão em todo o mundo grego', 'B'),
(20, 'Quem foi o rei da Macedônia que conquistou grande parte das cidades gregas no século IV a.C.?', 'Alexandre, o Grande', 'Filipe II', 'Dario I', 'Xerxes', 'B'),
(21, 'O que foi o Período Helenístico?', 'A fusão da cultura grega com culturas do Oriente após as conquistas de Alexandre', 'O período anterior à escrita na Grécia', 'A época da queda do Império Romano do Ocidente', 'O domínio da Grécia pelo Egito faraônico', 'A'),
(22, 'Qual cidade fundada no Egito se tornou um dos maiores centros culturais do Helenismo?', 'Alexandria', 'Esparta', 'Olímpia', 'Maratona', 'A'),
(23, 'Qual era a característica da religião grega antiga?', 'Monoteísta', 'Politeísta e antropomórfica', 'Baseada em um único livro sagrado', 'Exclusivamente abstrata, sem deuses', 'B'),
(24, 'Quem era o deus supremo dos céus e do trovão na mitologia grega?', 'Apolo', 'Posidão', 'Zeus', 'Hades', 'C'),
(25, 'Quem era o deus grego dos mares e dos terremotos?', 'Ares', 'Posidão', 'Hefesto', 'Hermes', 'B'),
(26, 'Qual deusa grega era associada à sabedoria e à estratégia, sendo protetora de Atenas?', 'Ártemis', 'Atena', 'Afrodite', 'Deméter', 'B'),
(27, 'Em homenagem a qual deus eram realizados os Jogos Olímpicos na Antiguidade?', 'Apolo', 'Zeus', 'Dionísio', 'Hermes', 'B'),
(28, 'Onde aconteciam os Jogos Olímpicos da Antiguidade?', 'Atenas', 'Olímpia', 'Esparta', 'Rodes', 'B'),
(29, 'Qual santuário grego era famoso pelo seu oráculo consultado sobre decisões importantes?', 'Santuário de Delfos', 'Partenon', 'Teatro de Epidauro', 'Museu de Alexandria', 'A'),
(30, 'Qual teatro grego teve grande importância religiosa e cívica, ligado ao culto a Dionísio?', 'Teatro grego antigo', 'Coliseu', 'Circo Máximo', 'Panteão', 'A'),
(31, 'Quais eram os dois principais gêneros teatrais da Grécia Antiga?', 'Ópera e balé', 'Tragédia e comédia', 'Farsa e pantomima', 'Romance e épico', 'B'),
(32, 'Quais são três nomes centrais da dramaturgia grega antiga?', 'Sófocles, Ésquilo e Eurípedes', 'Homero, Hesíodo e Ovídio', 'Platão, Aristóteles e Pitágoras', 'Heródoto, Tucídides e Plutarco', 'A'),
(33, 'Quais obras épicas são atribuídas a Homero?', 'Eneida e Metamorfoses', 'Ilíada e Odisseia', 'Teogonia e Os Trabalhos e os Dias', 'A República e Política', 'B'),
(34, 'Qual poeta grego escreveu a Teogonia, sobre a origem dos deuses?', 'Hesíodo', 'Sófocles', 'Aristófanes', 'Píndaro', 'A'),
(35, 'Qual filósofo grego ficou conhecido pelo método da maiêutica e por não deixar textos escritos por ele mesmo?', 'Platão', 'Sócrates', 'Aristóteles', 'Epicuro', 'B'),
(36, 'Qual filósofo grego fundou a Academia e escreveu A República?', 'Sócrates', 'Platão', 'Heráclito', 'Zenão', 'B'),
(37, 'Quem foi discípulo de Platão, fundou o Liceu e escreveu obras sobre lógica, política e ética?', 'Parmênides', 'Aristóteles', 'Demócrito', 'Arquimedes', 'B'),
(38, 'Qual pensador grego é frequentemente chamado de \"pai da História\" por investigar causas e relatos?', 'Heródoto', 'Tucídides', 'Hipócrates', 'Euclides', 'A'),
(39, 'Qual historiador grego escreveu sobre a Guerra do Peloponeso buscando análise política e militar?', 'Tucídides', 'Homero', 'Praxíteles', 'Tales', 'A'),
(40, 'Quem é tradicionalmente considerado um dos nomes fundamentais da medicina na Grécia Antiga?', 'Hipócrates', 'Pitágoras', 'Arquimedes', 'Fídias', 'A'),
(41, 'Qual matemático e filósofo grego é associado a teoremas sobre triângulos retângulos e harmonia numérica?', 'Pitágoras', 'Ésquilo', 'Leônidas', 'Clístenes', 'A'),
(42, 'Qual matemático grego sistematizou a geometria na obra Os Elementos?', 'Euclides', 'Sólon', 'Péricles', 'Dionísio', 'A'),
(43, 'Qual cientista e inventor grego de Siracusa destacou-se na mecânica e na hidrostática?', 'Arquimedes', 'Protágoras', 'Górgias', 'Sólon', 'A'),
(44, 'Qual famoso templo em Atenas foi construído na acrópole durante o governo de Péricles?', 'Partenon', 'Panteão', 'Templo de Luxor', 'Zigurate de Ur', 'A'),
(45, 'Quais eram as três ordens arquitetônicas clássicas da Grécia Antiga?', 'Românica, gótica e barroca', 'Dórica, jônica e coríntia', 'Toscana, compósita e bizantina', 'Egípcia, assíria e persa', 'B'),
(46, 'Qual ordem arquitetônica grega se destaca pelo capitel decorado com folhas de acanto?', 'Dórica', 'Jônica', 'Coríntia', 'Cicládica', 'C'),
(47, 'Qual foi a importância do comércio marítimo no Mediterrâneo para os gregos antigos?', 'Isolou as cidades e impediu trocas culturais', 'Favoreceu o contato entre povos, a circulação de ideias e a fundação de colônias', 'Substituiu completamente a agricultura em todas as regiões', 'Impediu o uso de moedas nas cidades gregas', 'B'),
(48, 'O que eram as colônias gregas fundadas pelo Mediterrâneo e Mar Negro?', 'Províncias governadas por um imperador único', 'Novos núcleos urbanos ligados culturalmente às metrópoles de origem', 'Campos de treinamento militar apenas para estrangeiros', 'Bases navais exclusivamente persas', 'B'),
(49, 'O que caracterizava a educação em Esparta para os meninos espartanos (esparciatas)?', 'Foco exclusivo em filosofia e poesia lírica', 'Formação rigorosa e disciplinada voltada à vida militar (agogê)', 'Educação feita apenas em casa por tutores persas', 'Ausência total de atividade física e treino coletivo', 'B'),
(50, 'Como eram chamados os professores itinerantes de retórica e argumentação em Atenas no século V a.C.?', 'Éforos', 'Sofistas', 'Arcontes', 'Hilotas', 'B');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
