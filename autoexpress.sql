-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/04/2024 às 15:38
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
-- Banco de dados: `autoexpress`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(1500) DEFAULT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `subtitulo`, `imagem`) VALUES
(29, 'intercooler Metal Horse', 'Os intercoolers Metalhorse são componentes essenciais em sistemas de turboalimentação de motores, projetados para melhorar o desempenho e a eficiência dos veículos, fabricados com materiais de alta qualidade, como alumínio ou aço inoxidável, os intercoolers Metalhorse oferecem uma excelente capacidade de dissipação de calor, Além disso, os intercoolers MetalHorse muitas vezes são projetados com um fluxo de ar otimizado, o que pode resultar em uma redução do atraso do turbo (turbo lag) e uma resposta mais rápida do acelerador. Isso proporciona uma experiência de direção mais suave e responsiva. Eles ajudam a resfriar o ar comprimido antes que ele entre nos cilindros do motor, aumentando assim a densidade do ar e melhorando a eficiência da combustão. Isso resulta em um aumento de potência e desempenho do motor.', 'intercoolers_-_banner.jpg'),
(30, 'Freios Brembo', 'Os freios Brembo são amplamente reconhecidos como alguns dos sistemas de freio de alta performance mais renomados e confiáveis do mundo. Os freios Brembo são conhecidos por sua capacidade de oferecer uma frenagem potente e consistente, mesmo em condições extremas. Com tecnologias avançadas de design e materiais de alta qualidade, como discos de freio em carbono-cerâmica ou ferro fundido de alta qualidade, A Brembo é uma empresa italiana especializada em sistemas de freios de alto desempenho e é conhecida por sua qualidade, inovação e desempenho excepcional Os sistemas de freios Brembo são projetados com tecnologia de ponta e materiais de alta qualidade para proporcionar desempenho de frenagem superior e consistente em uma variedade de condições de direção. Algumas características distintivas dos freios Brembo.', 'KIT-DOPPIO banner.jpg'),
(31, 'Injeções Programaveis Fuel Tech', 'As injeções FuelTech são sistemas de injeção eletrônica avançados e altamente confiáveis ​​desenvolvidos para maximizar o desempenho e a eficiência dos motores a combustão interna. Projetadas com tecnologia de ponta, as injeções FuelTech oferecem um controle preciso sobre a mistura ar/combustível e a ignição, permitindo uma otimização personalizada para cada aplicação específica, A grande vantagem das injeções programáveis FuelTech é a sua capacidade de personalização e ajuste fino. Os usuários têm acesso a uma ampla gama de parâmetros que podem ser ajustados para otimizar o desempenho do motor, como a quantidade de combustível injetada em diferentes faixas de rotação, a temporização da ignição, o controle de pressão do turbo, entre outros, os usuários têm acesso a uma ampla gama de parâmetros que podem ser ajustados para otimizar o desempenho do motor, como a quantidade de combustível injetada em diferentes faixas de rotação, a temporização da ignição, o controle de pressão do turbo, entre outros. Isso permite que os entusiastas de veículos de alto desempenho ajustem seu motor de acordo com suas necessidades específicas e objetivos de desempenho.', 'fuel-art.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `logo` varchar(80) NOT NULL,
  `icone` varchar(80) NOT NULL,
  `instagram` varchar(80) DEFAULT NULL,
  `twitter` varchar(80) DEFAULT NULL,
  `linkedin` varchar(80) DEFAULT NULL,
  `facebook` varchar(80) DEFAULT NULL,
  `youtube` varchar(80) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `titulo_servicos` varchar(50) DEFAULT NULL,
  `subtitulo_servicos` varchar(255) DEFAULT NULL,
  `titulo_trabalhos` varchar(50) DEFAULT NULL,
  `subtitulo_trabalhos` varchar(255) DEFAULT NULL,
  `titulo_equipe` varchar(50) DEFAULT NULL,
  `subtitulo_equipe` varchar(255) DEFAULT NULL,
  `titulo_contato` varchar(50) DEFAULT NULL,
  `subtitulo_contato` varchar(255) DEFAULT NULL,
  `texto_rodape` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `senha`, `telefone`, `endereco`, `logo`, `icone`, `instagram`, `twitter`, `linkedin`, `facebook`, `youtube`, `cor`, `titulo_servicos`, `subtitulo_servicos`, `titulo_trabalhos`, `subtitulo_trabalhos`, `titulo_equipe`, `subtitulo_equipe`, `titulo_contato`, `subtitulo_contato`, `texto_rodape`) VALUES
(1, 'AutoExpress', 'AutoExpress@gmail.com', '123', '(11) 96609-7754', ' Av.Brasil N°1350, Ferraz de vasconcelos, São paulo, Brasil', 'logo.pmg', 'icone.png', 'https://www.instagram.com/autotuning.br?utm_source=ig_web_button_share_sheet&igs', '', '', 'https://www.facebook.com/reel/1088821885054942', '', '#000000', 'Nossos Serviços', 'Agende sua manutenção ou Melhoria na nossa oficina.', 'Nosso Portifólio', 'Veja algumas das nossas preparações ', 'Nosso Time', 'Conheça a nossa Equipe', 'Contate-nos', 'Entre em contato', 'Copyright © AutoExpress direitos reservados/SESI-SENAI/Ferraz de vasconcelos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`id`, `nome`, `cargo`, `imagem`) VALUES
(7, 'Gabriel Silva', 'Mecánico Chefe, Fundador', 'Silva.jpeg'),
(8, 'Brendon Harrisson', 'Designer e desenvolvedor Web', 'Brendon.jpeg'),
(9, 'Bruno Campioni', 'Administrador de Banco de Dados (DBA)', 'Bruno.jpeg'),
(10, 'Kauã Moura', 'Diretor Financeiro', 'Moura.jpeg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(15, 'Golf GTI 2.0T', 'Foi feita a instalação de Intake, filtro K&amp;N e DownPype', '11-04-2024-09-46-54-11-04-2024-09-15-26-Filter.jpg', '', 'Imagem'),
(16, 'Volkswagen Polo 1.6 Turbo', 'Foram colocadas Bobinas RS-Performance, cash Tank, intercooler Metalhorse, toda parte de presurização e exaustão.', '11-04-2024-09-44-34-Motor-polo.jpeg', '', 'Imagem'),
(17, 'Upgrades', 'A modificação mais simples a mais complexas, instalação de turbina, presurização, filtros esportivos, DownPype, injeção programavel, intercoolers de água e óleo, sistema e discos de freio, bombas auxiliares e manutenções preventivas como troca de fluidos e revisão.', '11-04-2024-09-44-56-Frente-Polo.jpeg', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(2, 'Sobre nós', 'A AutoExpress é a realização de um sonho que começou pequeno.', '<h2 style=\"font-family: Montserrat, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 20px; font-size: 24px; background-color: rgb(255, 255, 255);\">AutoExpress é uma empresa focada em modificações e upgrades</h2><h3 style=\"font-family: Montserrat, sans-serif; line-height: 26px; color: rgb(119, 119, 119); margin-top: 20px; margin-bottom: 20px; font-style: italic; background-color: rgb(255, 255, 255);\"><font size=\"2\">Lembramos que modificações fora das concesonarias autorizadas e pela propria marca do veículo, quais quer garantia de eficiencia ou durabilidade fornecida pela fabricante é automaticamente anulada.</font></h3><p style=\"text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255);\">A AutoEXpress está no mercado de manutenção e prestação de serviços a mais de 14 anos, ao longo do tempo nós conseguimos aprender e evoluir cada vez mais, tudo começou em uma pequena garagem no estado de SP, bairro tatuapé, o sonho de um garoto virou mais que uma realidade, se tornou o seu objetivo de vida, sozinho apenas com a cara e a coragem, em 1998 ele conseguia inalgurar a sua primeira oficina, a manuten Car, o negócio foi crescendo e ganhando popularidade até que depois de 12 anos com muito trabalho duro no ano de 2010 ele inalgurava a AutoExpress oficina e venda especializada em upgrades e soluções do mundo automotivo de alta performance, dos carros populares ao auto padrão.</span><br></p>', '05-04-2024-14-14-43-logo.jpg', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(100) NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `trabalhos`
--

INSERT INTO `trabalhos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`, `link`) VALUES
(21, 'Mini Cooper S 1.6t', 'Instalação de novas bobinas Rs-performance e manta térmica na caixa quente da turbina.', 'mini motor.jpeg', NULL, '', 'https://www.instagram.com/p/CyCAvD6PAOo/?utm_source=ig_web_copy_link'),
(22, 'Fiat Fastback Abarth1.0T', 'Preparação Stg2, instalação de DownPype, filtro K&N', 'Fastback.jpeg', NULL, '', 'https://www.instagram.com/p/Cy4ITIHpoB7/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(23, 'Volkswagen Golf GTI 2.0T', 'Toda Preparação ST3, Substituição de turbina, intercooler, filtro, bombas de alta, novo sistema de exaustão com coletor e escape Full Inox 3\' Polegadas.', 'Mh golf.jpeg', NULL, '', 'https://www.instagram.com/p/C2vR21frU2Q/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(24, 'Volkswagen Golf GTI 2.0T', NULL, 'Golf.jpeg', NULL, '', 'https://www.instagram.com/p/C2vR21frU2Q/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(25, 'Volkswagen Gol AP2.0t 1992 ', 'Montagem completa do motor AP2.0, miolo, pistões e bielas forjadas, comandos Militech e sistema de alimentação auxiliar Turbina Garreti .50 .', 'gol motor.jpeg', NULL, '', 'https://www.instagram.com/p/C2iZ4sqveSS/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(26, 'Volkswagen Gol AP2.0t 1992 ', NULL, 'Gol.jpeg', NULL, '', 'https://www.instagram.com/p/C2iZ4sqveSS/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(27, 'Volkswagen Golf Tsi ', 'Novo intercooler Metalhorse, troca das pinças de freio e discos originais pelo Kit Diprio da Brembo.', 'Kit brembo.jpeg', NULL, '', 'https://www.instagram.com/p/C4JWRFky2mx/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(28, 'Volkswagen Golf Tsi ', NULL, 'Golf+Kit.jpeg', NULL, '', 'https://www.instagram.com/p/C4JWRFky2mx/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(29, 'Mitisubishi Evo X 2.0T', 'Foram colocados DownPype, Coletor de escape 4X1 e filtro K&N.', 'evo-motor.jpeg', NULL, '', 'https://www.instagram.com/p/Cx8-BcHP-Tx/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(30, 'Mitisubishi Evo X 2.0T', NULL, 'evo.jpeg', NULL, '', 'https://www.instagram.com/p/Cx8-BcHP-Tx/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(31, 'Volkswagen Polo 1.6 Turbo', 'Foram colocadas Bobinas RS-Performance, cash Tank, intercooler Metalhorse, toda parte de presurização e exaustão.', 'Motor-polo.jpeg', NULL, '', 'https://www.instagram.com/p/C3vJDqht9Wz/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA=='),
(32, 'Volkswagen Polo 1.6 Turbo', NULL, 'Frente-Polo.jpeg', NULL, '', 'https://www.instagram.com/p/C3vJDqht9Wz/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
