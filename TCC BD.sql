
-- Criação do banco de dados
CREATE DATABASE INTEGRAETEC;

USE INTEGRAETEC;

-- Tabela tbADM
CREATE TABLE tbADM (
    CodigoADM VARCHAR(40) NOT NULL,
    SenhaADM VARCHAR(255) NOT NULL
);

-- Inserção de dados na tabela tbADM
INSERT INTO tbADM (CodigoADM, SenhaADM)
VALUES ('151', 'Etec2023ADM');


-- Tabela tbcomentarios
CREATE TABLE tbcomentarios (
    nomeVeterano VARCHAR(90) NOT NULL,
    rmVeterano INT NOT NULL PRIMARY KEY,
    texto TEXT NOT NULL,
    curso VARCHAR(4) NOT NULL,
    condicao ENUM('I', 'A', 'X') DEFAULT 'I',
    ano YEAR DEFAULT YEAR(CURDATE()),

    CONSTRAINT curso_check CHECK (curso IN ('INFO', 'ADM', 'RH', 'SJ', 'MKT'))
);
-- Inserção de dados na tabela tbcomentarios
INSERT INTO tbcomentarios (nomeVeterano, rmVeterano, texto, curso)
VALUES 
('RENAN MORAES', 31775, 'Eu nunca imaginei que sairia do ensino médio com uma profissão em mãos, mas foi exatamente isso que aconteceu. O curso de informática para internet foi mais do que eu esperava, tanto no conteúdo quanto no impacto na minha vida. Hoje, vejo que as noites mal dormidas valiam a pena, pois saio preparado e com esperança de um futuro brilhante.', 'INFO'),
('JULIA BELLINI', 31784, 'Esses três anos foram um misto de desafios e conquistas. O curso técnico foi excelente para me preparar para o mercado de trabalho, mas achei que poderia ter mais suporte emocional para os alunos. Ainda assim, a experiência valeu a pena e me deixou mais confiante em quem sou e no que posso alcançar.', 'INFO'),
('LETYCIA CONDE', 31979, 'No início, achei que seria um desafio gigante, mas com o tempo percebi que a estrutura da ETEC me ajudou a me organizar. A parte técnica do curso é incrível e me fez enxergar a área de informática como algo mais concreto e aplicável. A única coisa que senti falta foi um pouco mais de foco em soft skills, mas, no geral, foi uma experiência transformadora.', 'INFO'),
('MARCOS ALEXANDRE', 31778, 'Participar do curso integrado foi a melhor decisão que tomei. Aprendi não apenas habilidades técnicas, mas também como trabalhar em equipe e me comunicar melhor. Esses três anos me ensinaram a importância da dedicação e da resiliência. Estou animado para aplicar o que aprendi no mercado de trabalho e seguir minha carreira.', 'INFO'),
('ARTHUR AGUIAR', 31790, 'Eu achava que seria tudo voltado para programação, mas o curso é muito mais abrangente. Isso foi bom, mas também senti que algumas áreas não foram exploradas tão a fundo quanto eu gostaria. Apesar disso, reconheço que a experiência me ajudou a amadurecer e descobrir minha paixão pela área de tecnologia.', 'INFO'),
('GABRIEL PINHEIRO', 31958, 'O curso de informática me ensinou a usar as ferramentas necessárias para eu entrar no mercado de trabalho. Porém, a grade curricular deixa a desejar, e a carga horária é extensa e cansativa. Alguns professores do curso são um pouco difíceis de lidar e não têm a capacidade de orientar e ensinar aos alunos as habilidades e competências necessárias na área de tecnologia. Para entrar em um emprego ou conseguir um estágio, o curso certamente guiará o aluno ao lugar certo. No entanto, para ingressar em uma faculdade e estudar para vestibulares, é preferível optar por outros cursos com cargas horárias menores.', 'INFO'),
('INGRID CAVALLI', 31782, 'Quando me inscrevi no curso, achei que seria mais focado apenas em programação, mas acabei aprendendo muito sobre outras áreas, como design e empreendedorismo. Apesar disso, senti que a sobrecarga de trabalhos às vezes prejudicava meu desempenho no ensino médio. Mesmo com esses desafios, acredito que o curso foi uma grande oportunidade para meu crescimento.', 'INFO'),
('BRYAN MOREIRA', 31774, 'Esses três anos foram intensos, mas muito recompensadores. O curso técnico trouxe um diferencial que muitos colegas de outras escolas não têm, e isso me deixa confiante para o mercado de trabalho. Apesar disso, algumas matérias ficaram muito corridas por causa da carga horária apertada. Ainda assim, foi uma experiência que mudou minha visão sobre o futuro.', 'INFO'),
('CAUÃ ALTRON', 31781, 'Eu nunca imaginei que sairia do ensino médio com uma profissão em mãos, mas foi exatamente isso que aconteceu. O curso de informática para internet foi mais do que eu esperava, tanto no conteúdo quanto no impacto na minha vida. Hoje, vejo que as noites mal dormidas valiam a pena, pois saio preparado e com esperança de um futuro brilhante.', 'INFO'),
('CAUÊ RODRIGUES', 31766, 'Achei que o curso seria mais fácil, mas foi bem puxado. Não vou mentir, houve momentos em que quase desisti, mas aprendi que a persistência é essencial. A parte prática foi incrível, mas senti que poderia ter tido mais orientação para lidar com as demandas acadêmicas do ensino médio junto com o técnico. Mesmo assim, me sinto realizado e preparado.', 'INFO'),
('ADRYELLY OLIVEIRA', 31767, 'Durante esses três anos, percebi que o curso é uma excelente opção para quem deseja se aprofundar na área de informática e adquirir habilidades técnicas. No entanto, para quem busca uma preparação mais focada no ensino médio tradicional, o curso pode não ser tão adequado. A carga horária e o conteúdo técnico exigem bastante dedicação, o que pode dificultar a conciliação com estudos voltados para vestibulares e outros objetivos acadêmicos. Apesar disso, reconheço que é uma oportunidade valiosa para quem deseja sair do ensino médio com uma base sólida para o mercado de trabalho.', 'INFO');

-- Tabela tbcurso
CREATE TABLE tbcurso (
    texto TEXT NOT NULL,
    curso VARCHAR(4) NOT NULL,

    CONSTRAINT curso_check3 CHECK (curso IN ('INFO', 'ADM', 'RH', 'SJ', 'MKT'))
);

-- Inserção de dados na tabela tbcurso
INSERT INTO tbcurso (texto, curso)
VALUES

-- ADM
('O curso é estruturado em três séries anuais, com até oito aulas diárias em período integral. A matriz curricular inclui projetos de aprofundamento voltados para as principais áreas do conhecimento, alinhados às ocupações demandadas pelo mercado de trabalho. Ao final do programa, o aluno recebe um diploma de técnico, que habilita tanto ao exercício da profissão quanto à continuidade dos estudos no nível superior.

O currículo abrange o funcionamento de diversas organizações, incluindo empresas privadas, ONGs, órgãos públicos e setores de comércio e indústria. Para entender os conteúdos abordados, como história da administração, evolução organizacional, contabilidade e legislação empresarial, o estudante precisa de fundamentos em língua portuguesa, matemática, história e geografia. Além disso, aprenderá a analisar a viabilidade de negócios e o comportamento do consumidor, técnicas de atendimento ao cliente, empreendedorismo e estratégias de planejamento organizacional.

O técnico em Administração tem diversas oportunidades de atuação em diferentes departamentos. No setor de compras, pode elaborar pedidos, cadastrar fornecedores e conferir a entrega de mercadorias. Na produção, é responsável pela elaboração de planilhas de controle de processos e produtos, registrando a quantidade produzida. No departamento de vendas, pode desenvolver planilhas para monitorar o desempenho das vendas, cadastrar clientes e gerenciar a documentação fiscal. No setor de Recursos Humanos, atuará no cálculo de salários e benefícios, além de apoiar processos de contratação e demissão. Em todas as áreas, o técnico também estará apto a atender clientes e fornecedores, redigindo documentos como e-mails, memorandos e atas.', 'ADM'),

-- INFO
('O currículo é estruturado em três séries anuais interligadas, com a carga horária de até oito aulas diárias em período integral. A matriz curricular inclui projetos de aprofundamento focados nas diversas áreas do conhecimento, correspondendo às ocupações identificadas no mercado de trabalho. Ao concluir as três séries, o aluno receberá o diploma de técnico, o que lhe conferirá o direito de exercer a habilitação profissional e prosseguir com os estudos em nível superior.

O curso abrange o processo de criação de sites e o desenvolvimento de programas que podem ser integrados a páginas na internet. Para isso, o aluno estudará raciocínio lógico e linguagens de programação, que permitem a implementação de comandos para desenvolver funcionalidades e estruturar um site. Além disso, os estudantes terão a oportunidade de aprender fundamentos de design, visando à criação de páginas mais atraentes e de fácil navegação. O curso também contempla a criação e a modificação de bancos de dados que alimentarão os sites. Noções de marketing digital e empreendedorismo serão abordadas ao longo da formação.

O profissional formado será capaz de criar websites que atendam às necessidades dos clientes, identificando e sugerindo as melhores soluções; realizar a manutenção de portais, sites e intranets; gerenciar a identidade visual das páginas de uma empresa; customizar plataformas de conteúdo para a web, como blogs e e-commerces; desenvolver e manter bancos de dados para websites; adaptar páginas para incorporar vídeos, áudios e funções que favoreçam a acessibilidade, como comandos de voz; otimizar imagens para uso na internet; e preparar layouts para newsletters ou e-mails marketing, entre outras atividades.', 'INFO'),

-- RH
('O curso é estruturado em três séries anuais, com uma carga horária de seis aulas diárias em meio período (manhã ou noite). A matriz curricular integra disciplinas da Base Nacional Comum do Ensino Médio com componentes do Ensino Técnico. Ao concluir as três séries, o aluno terá finalizado o Ensino Médio e receberá o diploma de Técnico, o que lhe permitirá exercer a habilitação profissional e prosseguir com os estudos em nível superior.

O estudante necessitará de conhecimentos em língua portuguesa, matemática e história para compreender o curso e desempenhar as funções do setor de Recursos Humanos de uma empresa. Essas funções incluem a contratação, demissão e aposentadoria de funcionários, bem como a oferta de benefícios (vale-transporte, plano de saúde, vale-refeição etc.). Para tal, será fundamental o estudo das leis que regulam os direitos e deveres do empregador e dos empregados (legislação trabalhista). O aluno também aprenderá noções de psicologia, essenciais para entender as dinâmicas de relacionamento no ambiente de trabalho, realizar processos de recrutamento e seleção de novos funcionários e promover ações de motivação.

Entre as atribuições do técnico em Recursos Humanos, destacam-se: anunciar vagas de emprego, descrevendo as atribuições dos cargos a serem preenchidos; aplicar testes em processos seletivos; realizar cálculos para determinar os valores a serem descontados do salário dos funcionários, como o Imposto de Renda e a contribuição ao INSS, além de porcentagens referentes a benefícios; inserir informações no sistema para a geração de demonstrativos de pagamentos (holerites ou contracheques); cuidar da documentação necessária para aposentadoria, contratação e demissão de profissionais, incluindo o preenchimento de informações na carteira de trabalho; organizar e arquivar documentos do setor; registrar e controlar períodos de férias e afastamentos; e auxiliar no treinamento e capacitação dos empregados.', 'RH'),

-- MKT
('O curso é estruturado em três séries anuais, com uma carga horária de seis aulas diárias em meio período (manhã). A matriz curricular integra disciplinas da Base Nacional Comum do Ensino Médio com componentes do Ensino Técnico. Ao concluir as três séries, o aluno terá completado o Ensino Médio e receberá o diploma de Técnico, o que lhe permitirá exercer a habilitação profissional e prosseguir com os estudos em nível superior.

O estudante aprenderá que marketing transcende a mera publicidade; trata-se de um processo que inicia com a compreensão das necessidades do consumidor, visando o desenvolvimento de produtos, serviços e ideias a serem comercializados. Para aprofundar-se nesse campo, o aluno necessitará de conhecimentos em língua portuguesa, geografia e matemática. Aprenderá a definir o público-alvo de cada produto ou serviço e a analisar o processo de interação entre vendedores e compradores. Além disso, estudará as diversas ferramentas de comunicação, como publicidade, telemarketing e promoções de vendas. O curso também contemplará a criação de logotipos, rótulos e embalagens. A formação técnica em Marketing será complementada por disciplinas como Administração de Empresas, Legislação (incluindo o Código de Defesa do Consumidor) e aulas de Inglês e Espanhol voltadas à leitura de textos.

O técnico em Marketing estará apto a realizar pesquisas de mercado para identificar o comportamento do consumidor. No ponto de venda (como supermercados, shoppings e lojas), poderá demonstrar produtos, montar materiais promocionais e negociar espaços para a exposição adequada dos itens a serem comercializados. Também será responsável pela elaboração de orçamentos para a execução de ações, como promoções e campanhas publicitárias, calculando os custos envolvidos. Ademais, poderá acompanhar as ações implementadas para avaliar se os resultados foram satisfatórios. Em pequenas empresas, o profissional poderá desenvolver logotipos, rótulos e criar conteúdo para redes sociais.', 'MKT'),

-- SJ
('O curso é estruturado em três séries anuais, com uma carga horária de seis aulas diárias em meio período (manhã). A matriz curricular combina disciplinas da Base Nacional Comum do Ensino Médio com componentes do Ensino Técnico. Ao concluir as três séries, o aluno terá finalizado o Ensino Médio e receberá o diploma de Técnico, o que lhe permitirá exercer a habilitação profissional e continuar os estudos em nível superior.

Com foco nas leis e normas, o curso abrange diversas áreas do Direito. O aluno estudará a Constituição Federal (Direito Constitucional), os mecanismos de punição a crimes (Direito Penal), as regras que regem as relações e disputas entre indivíduos (Direito Civil), o funcionamento dos órgãos públicos (Direito Administrativo), as normas que regulam as relações comerciais (Direito Empresarial), os direitos e deveres entre empregadores e empregados (Direito do Trabalho), a legislação tributária (Direito Tributário) e a proteção ao consumidor (Direito do Consumidor), entre outros temas. O estudante também aprenderá a elaborar e redigir processos, contratos e documentos jurídicos. Além do estudo das leis, o aluno terá formação em conceitos de administração de empresas, matemática financeira, técnicas de atendimento ao cliente e inglês instrumental, sendo a língua portuguesa fundamental.

O técnico em Direito atuará como auxiliar do advogado, oferecendo suporte técnico e administrativo a empresas. Suas responsabilidades incluem prestar atendimento ao público, verificar os prazos de cada etapa de processos judiciais, calcular os honorários dos advogados e os custos dos processos, receber e enviar documentos, registrando a movimentação em sistemas ou livros de protocolo, redigir contratos, ofícios, processos e cartas comerciais, além de arquivar processos e realizar outras atividades pertinentes.', 'SJ');

-- Tabela tbRM
CREATE TABLE tbRM (
    nome VARCHAR(255) NOT NULL,
    rm INT PRIMARY KEY,
    curso VARCHAR(4) NOT NULL,

    CONSTRAINT curso_check2 CHECK (curso IN ('INFO', 'ADM', 'RH', 'SJ', 'MKT'))
);

-- Inserção de dados na tabela tbRM
INSERT INTO tbRM (nome, rm, curso)
VALUES
-- INFO --
('ADRYELLY DE OLIVEIRA', 31767, 'INFO'),
('ANA CLARA MAXIMINO', 31957, 'INFO'),
('ARTHUR BARBEIRO AGUIAR', 31782, 'INFO'),
('BRUNO MENDES DA SILVA', 31777, 'INFO'),
('BRYAN BELARMINO MOREIRA', 31766, 'INFO'),
('CARLOS ALEXANDRE DA SILVA GOMES', 31765, 'INFO'),
('CAUÃ ALTRON PULIANI', 31790, 'INFO'),
('CAUÊ RODRIGUES NUNES EVANGELISTA', 31958, 'INFO'),
('CÉSAR AUGUSTO FREITAS SAVOLDI', 31789, 'INFO'),
('ESTEVÃO DA SILVA LUCRECIO', 31888, 'INFO'),
('FELIPE NETTO DA COSTA', 31275, 'INFO'),
('FELIPE SILVA DE SOUZA', 31786, 'INFO'),
('GABRIEL CESAR RODRIGUES', 31783, 'INFO'),
('GABRIEL PARIJANI CUSTODIO', 31788, 'INFO'),
('GABRIEL PINHEIRO CHAGAS FERNANDES', 31774, 'INFO'),
('HENRIQUE RODRIGUES BARBOSA', 31769, 'INFO'),
('INGRID CAVALLI DA SILVA', 31781, 'INFO'),
('ISABELA DE OLIVERA GUESSI', 31762, 'INFO'),
('JHONATAN GOBETI NUNES', 31768, 'INFO'),
('JOÃO GILBERTO CANAL FAVARO', 31883, 'INFO'),
('JOÃO PEDRO DE LIMA SANTOS', 31885, 'INFO'),
('JOÃO PEDRO DE OLIVEIRA SPERA', 31772, 'INFO'),
('JOÃO PEDRO PAULINO SPINDA', 31884, 'INFO'),
('JULIA BELLINI SORRENTE', 31784, 'INFO'),
('KAIQUE ALVES DE CONTI', 31776, 'INFO'),
('LETÍCIA DA SILVA FRANCISCO', 31780, 'INFO'),
('LETÍCIA PEREIRA DA SILVA', 31770, 'INFO'),
('LETYCIA CONDE DA CRUZ', 31979, 'INFO'),
('LUCAS ALESSANDRO MENDONÇA BENTO', 31889, 'INFO'),
('LUCAS DANIEL TAVARES MAXIMO', 31773, 'INFO'),
('LUIGI AUGUSTO VAZ CASSIANO DA SILVA', 31787, 'INFO'),
('MARCOS ALEXANDRE ALVES ARAUJO', 31778, 'INFO'),
('PABLO HENRIQUE NOGUEIRA', 31887, 'INFO'),
('PEDRO HENRIQUE ALVES DIAS', 31886, 'INFO'),
('PEDRO HENRIQUE DEZEM', 31763, 'INFO'),
('RAFAEL DO NASCIMENTO', 31761, 'INFO'),
('RENAN BRITO DE MORAES', 31775, 'INFO'),
('RIAD ABBES BERNARDE', 31764, 'INFO'),
('VINICIUS SILVA GUEDES', 32001, 'INFO'),

-- ADM --
('ANA BEATRIZ ALBİNO DIAS', 31745, 'ADM'),
('ANA CAROLİNA GONÇALVES DOS SANTOS', 31738, 'ADM'),
('ANA CAROLINA VIEIRA', 31740, 'ADM'),
('ANA JÚLIA DETOMINI', 31755, 'ADM'),
('ANA LAURA CARDOSO SANTOS', 31739, 'ADM'),
('ANA ROSA ALVES', 31728, 'ADM'),
('ANDRE LUÍS DA SILVA', 31732, 'ADM'),
('ARTHUR HENRIQUE DE ALMEIDA', 31729, 'ADM'),
('DANIEL OLIVEIRA SANTOS', 31737, 'ADM'),
('DANIELE TEIXEIRA LIMA', 31744, 'ADM'),
('DAVI DA SILVA FARIA', 31956, 'ADM'),
('DAVI RIBEIRO MARIANO', 31758, 'ADM'),
('DIEGO DOS SANTOS DE CARVALHO', 31799, 'ADM'),
('ENZO DE ALMEIDA PENARIOL', 31746, 'ADM'),
('EVERTON GABRIEL DE MELO SANTOS', 31752, 'ADM'),
('FELIPE MORO', 31756, 'ADM'),
('GABRIELA APARECIDA CRAVO SEVERINO', 31753, 'ADM'),
('GIOVANA LOPES PEREIRA', 31742, 'ADM'),
('ISADORA RAMOS PERALTA', 31731, 'ADM'),
('JOÃO MATEUS TRINDADE PEIXE', 31730, 'ADM'),
('JULIA BALDISSERA MAZIERO', 31749, 'ADM'),
('KAUA MODENESE MENDES', 31748, 'ADM'),
('LEONARDO ARAÚJO FIOROT', 31760, 'ADM'),
('LUANA DOS SANTOS ESCHER', 31757, 'ADM'),
('LUANA SILVA CENCI', 31741, 'ADM'),
('LUIZ FERNANDO GIANELO MARQUES', 31881, 'ADM'),
('MANUELA SARTORI', 31733, 'ADM'),
('MARIA CLARA DE CASTRO', 31759, 'ADM'),
('MARIA LUIZA ROGGE PARRO', 31736, 'ADM'),
('MILENA BONAFIM', 31743, 'ADM'),
('MOISÉS CUSTODIO LEITE SOARES', 31747, 'ADM'),
('RAFAELA APARECIDA CRAVO SEVERINO', 31754, 'ADM'),
('RYAN CARLOS GONÇALVES', 31882, 'ADM'),
('SANDRO JOSÉ CERANTOLA JUNIOR', 31735, 'ADM'),
('VITOR DOS SANTOS SAMPAIO', 31750, 'ADM'),
('VITÓRIA ASBAHR MELO', 31985, 'ADM'),
('WILLIAN LIMA DE ALEXANDRIA', 31734, 'ADM'),

-- MKT --
('ALICE CASTRO DE MORAES FACUNDES', 31959, 'MKT'),
('ANA BEATRIZ GONZAGA BOSSI', 31811, 'MKT'),
('ANA JÚLIA SOUZA DOS SANTOS', 31807, 'MKT'),
('ANA LAURA MIQUELIN SANTIAGO', 31814, 'MKT'),
('CAROLINA PONCHIO DA SILVA', 31793, 'MKT'),
('ÉDER GUIRAU DE ARAUJO', 31812, 'MKT'),
('EDUARDA AMADO PINA', 32542, 'MKT'),
('GABRIEL MURAMOTO DUARTE', 31796, 'MKT'),
('GABRIEL SOARES NAVARRO', 31810, 'MKT'),
('GABRIELA LEME FERREIRA', 32890, 'MKT'),
('GABRIELA RODRIGUES CELESTRINO', 31791, 'MKT'),
('GIOVANNA VICTÓRIA DE CARVALHO', 31798, 'MKT'),
('HENRIQUE MARQUES OLIVEIRA', 31892, 'MKT'),
('IZADORA DE SOUSA FERREIRA', 31813, 'MKT'),
('JULIA AGUILAR ANTONINI', 31795, 'MKT'),
('KAMILLY CRISTINE CHUBA', 31797, 'MKT'),
('KAUA GONCALVES DE OLIVEIRA', 31804, 'MKT'),
('LEONARDO DE PAULA DO NASCIMENTO', 31809, 'MKT'),
('LETÍCIA TENAN BOZADA', 31820, 'MKT'),
('LUCAS OKUMURA', 32547, 'MKT'),
('LUIZ FELIPE DA SILVEIRA', 31816, 'MKT'),
('MARIA CLARA BUSNARDO LIVOLIS', 31894, 'MKT'),
('MARIA EDUARDA RODRIGUES LEAL', 31802, 'MKT'),
('MATHEUS APARECIDO MANCHINI', 31805, 'MKT'),
('MATHEUS CRESPO RASSINI', 31893, 'MKT'),
('MIRELLA RODRIGUES DOS SANTOS', 31817, 'MKT'),
('NATHAN ALFINETO BOMBARDIN', 31803, 'MKT'),
('NATIELY CAMARA MENGUE', 31800, 'MKT'),
('NILSON APARECIDO DE SOUZA', 31818, 'MKT'),
('OLAVO PEREZ CRUZ', 31895, 'MKT'),
('RAFAEL AUGUSTO CAPUCHO', 31891, 'MKT'),
('ROSA MARIA DA CRUZ', 31792, 'MKT'),
('SABRINA BRIGATTO', 31794, 'MKT'),
('SARA SANTOS SILVA', 3200, 'MKT'),
('VITOR MAFFEIS POMINI', 31841, 'MKT'),

-- RH --
('ALANA BEATRIZ RODRIGUES', 31824, 'RH'),
('AMANDA GONÇALVES DE OLIVEIRA', 31843, 'RH'),
('ANA LAURA VERNILLO', 31827, 'RH'),
('ANATANIELI LOPES PIRES', 31821, 'RH'),
('ARTHUR CORDOVA DE ASSIS', 31897, 'RH'),
('BRUNO HENRIQUE CAETANO', 31828, 'RH'),
('CAIO CANHOTO FERREIRA', 31832, 'RH'),
('CASSIO AUGUSTO CADAMURO JUNIOR', 31625, 'RH'),
('FRANCISCO FARIAS DE SOUSA', 31830, 'RH'),
('GABRIEL FERREIRA ZIRONDI', 32317, 'RH'),
('GABRIEL JUNQUEIRA DE AZEVEDO ASSIS', 31900, 'RH'),
('GABRIELA DA SILVA HONORATO', 32548, 'RH'),
('GABRIELLE BARLETE CASSESI', 31626, 'RH'),
('GIOVANA DOS SANTOS CAO', 32546, 'RH'),
('GUILHERME MATHEUS LOPES', 32541, 'RH'),
('ISABELLI AMARAL SANTOS', 31848, 'RH'),
('JAILSON OLIVEIRA DOS SANTOS DE SOUZA', 31823, 'RH'),
('KAIO CÉSAR ALENCAR RIBEIRO', 31844, 'RH'),
('LARISSA CAMPOS', 31822, 'RH'),
('LETICIA SILVERIO GUIDEROLI', 31899, 'RH'),
('LORENA GARBI RODRIGUES', 31849, 'RH'),
('LUANA MEDEIROS DE CAMPOS', 31845, 'RH'),
('MARCELO AMANCIO RAIMUNDO JUNIOR', 31826, 'RH'),
('MARIA EDUARDA DA SILVA', 31829, 'RH'),
('MARIA EDUARDA MARQUES DA SILVA', 31825, 'RH'),
('MARIA EDUARDA MARQUES MIRANDA', 31962, 'RH'),
('MARIANA PEREIRA BARBOSA', 31896, 'RH'),
('MAYSA DEGANI HADRICH', 31901, 'RH'),
('MELISSA LOPES MENDES', 31833, 'RH'),
('NICOLE BARRICHELLO MARIANO DA SILVA', 31831, 'RH'),
('NIKOLLI DUNGUE BRANCHINI', 31842, 'RH'),
('PEDRO OTAVIO AVELINO', 31836, 'RH'),
('RYAN DE PAULA BARROS', 31961, 'RH'),
('SAMANTHA ROCHA BISTAFFA', 31847, 'RH'),

-- SJ --
('ALLAM FERNANDO DOS SANTOS', 31996, 'SJ'),
('ANA JULIA CESAR FERREIRA', 31865, 'SJ'),
('BARBARA ABREU LEITE', 31998, 'SJ'),
('CARLOS EDUARDO DA SILVA', 31876, 'SJ'),
('CATIELY DA COSTA', 31880, 'SJ'),
('EDUARDO FERREIRA THEODORO', 31915, 'SJ'),
('ELOÁ HERCULANI', 31873, 'SJ'),
('ENZO OKUMURA', 31904, 'SJ'),
('EVELYN NICOLETI', 31864, 'SJ'),
('GIOVANA COELHO DE OLIVEIRA', 31851, 'SJ'),
('HELENA GARCIA LOPES', 31868, 'SJ'),
('ISABELI AKEMI OKADA', 31855, 'SJ'),
('JOÃO PAULO BATISTA FILHO', 31877, 'SJ'),
('JOÃO PEDRO LEMOS MOREIRA', 31857, 'SJ'),
('KAUÃ GABRIEL DA SILVA', 31879, 'SJ'),
('KETTILY ROSA LEME', 31859, 'SJ'),
('LAIS ANDRESSA SILVA SANTOS', 31869, 'SJ'),
('LAURA BUENO IGLESSIAS', 31964, 'SJ'),
('LEONARDO GARCIA DA SILVA PEDRO', 31902, 'SJ'),
('LORRY ERIA ZAMBUZI', 31858, 'SJ'),
('LUCAS DE ANDRADE PALATINO', 31852, 'SJ'),
('LUIZ FELIPE COSS', 31870, 'SJ'),
('LYARA FERREIRA PIAU', 31866, 'SJ'),
('MANUELA MIRANDA FERREIRA', 31867, 'SJ'),
('MARCUS VINICIUS NASCIMENTO AMARAL', 51860, 'SJ'),
('MARIA CLARA DOS SANTOS GOMES', 32543, 'SJ'),
('MARIA ISABEL CEZARE', 31863, 'SJ'),
('MARIA LUIZA FINOTTI BEZERRA', 31853, 'SJ'),
('MARIANA BRIGIDA ELISIÁRIO', 31856, 'SJ'),
('MARIANA DOS SANTOS DE SOUZA', 31854, 'SJ'),
('MATHEUS CHIAPESAN VIZONA', 31861, 'SJ'),
('RAICA DE SOUZA PERES', 31602, 'SJ'),
('SOPHIA LOPES FAUSTINO', 32872, 'SJ'),
('YASMIN ROQUE MOURA', 31963, 'SJ');
