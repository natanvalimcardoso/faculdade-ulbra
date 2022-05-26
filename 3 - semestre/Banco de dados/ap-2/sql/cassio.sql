CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `horario` varchar(45) NOT NULL,
  `dia_semana` varchar(45) DEFAULT NULL,
  `aluno_id_aluno` int(11) NOT NULL,
  `professor_id_professor` int(11) NOT NULL,
  PRIMARY KEY (`id_agenda`),
  KEY `fk_agenda_aluno1_idx` (`aluno_id_aluno`),
  KEY `fk_agenda_professor1_idx` (`professor_id_professor`),
  CONSTRAINT `fk_agenda_aluno1` FOREIGN KEY (`aluno_id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agenda_professor1` FOREIGN KEY (`professor_id_professor`) REFERENCES `professor` (`id_professor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `horario` varchar(45) NOT NULL,
  `dia_semana` varchar(45) DEFAULT NULL,
  `aluno_id_aluno` int(11) NOT NULL,
  `professor_id_professor` int(11) NOT NULL,
  PRIMARY KEY (`id_agenda`),
  KEY `fk_agenda_aluno1_idx` (`aluno_id_aluno`),
  KEY `fk_agenda_professor1_idx` (`professor_id_professor`),
  CONSTRAINT `fk_agenda_aluno1` FOREIGN KEY (`aluno_id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agenda_professor1` FOREIGN KEY (`professor_id_professor`) REFERENCES `professor` (`id_professor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `idade` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `curso_id_curso` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `fk_aluno_curso1_idx` (`curso_id_curso`),
  CONSTRAINT `fk_aluno_curso1` FOREIGN KEY (`curso_id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

CREATE TABLE `curso` (
  `id_curso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `materia_id_materia` int(11) NOT NULL,
  `nivel_id_nivel` int(11) NOT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `fk_curso_materia_idx` (`materia_id_materia`),
  KEY `fk_curso_categoria1_idx` (`nivel_id_nivel`),
  CONSTRAINT `fk_curso_categoria1` FOREIGN KEY (`nivel_id_nivel`) REFERENCES `nivel` (`id_nivel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curso_materia` FOREIGN KEY (`materia_id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb3;

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

CREATE TABLE `nivel` (
  `id_nivel` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_nivel`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  PRIMARY KEY (`id_professor`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb3;

/ / / / / / / / / / / / Aqui mostra todos alunos fazem ingles basico / / / / / / / / / / / / / / 
CREATE VIEW `view_aluno_agenda__materia_ingles_curso_basico` AS
SELECT
  `aluno`.`id_aluno` AS `id_aluno`,
  `aluno`.`nome` AS `nome`,
  `aluno`.`idade` AS `idade`,
  `aluno`.`endereco` AS `endereco`,
  `aluno`.`telefone` AS `telefone`,
  `curso`.`nome` AS `curso`,
  `materia`.`nome` AS `materia`
FROM
  `mydb`.`aluno` `aluno`
  INNER JOIN `mydb`.`curso` `curso` ON (`aluno`.`curso_id_curso` = `curso`.`id_curso`)
  INNER JOIN `mydb`.`materia` `materia` ON (
    `curso`.`materia_id_materia` = `materia`.`id_materia`
  )
WHERE
  `materia`.`nome` = 'ingles'
  AND `curso`.`nome` = 'basico';

/ / / / / / / / / / / / / / / / / / / / / / / / / / / / / MOSTRAR TODOS alunos que fazem espanhol na 17 :00 / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / CREATE VIEW `view_aluno_agenda_materia_espanhol_17` AS
SELECT
  `aluno`.`id_aluno` AS `id_aluno`,
  `aluno`.`nome` AS `nome`,
  `aluno`.`idade` AS `idade`,
  `aluno`.`endereco` AS `endereco`,
  `aluno`.`telefone` AS `telefone`,
  `curso`.`nome` AS `curso`,
  `materia`.`nome` AS `materia`
FROM
  `mydb`.`aluno` `aluno`
  INNER JOIN `mydb`.`curso` `curso` ON (`aluno`.`curso_id_curso` = `curso`.`id_curso`)
  INNER JOIN `mydb`.`materia` `materia` ON (
    `curso`.`materia_id_materia` = `materia`.`id_materia`
  )
WHERE
  `materia`.`nome` = 'espanhol'
  AND `aluno`.`id_aluno` IN (
    SELECT
      `aluno_id_aluno`
    FROM
      `mydb`.`agenda` `agenda`
    WHERE
      `agenda`.`horario` = '17:00'
  );

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / mostrar todos alunos infantil*/
CREATE VIEW `view_nivel_infantil` AS
SELECT
  `aluno`.`id_aluno` AS `id_aluno`,
  `aluno`.`nome` AS `nome`,
  `aluno`.`idade` AS `idade`,
  `aluno`.`endereco` AS `endereco`,
  `aluno`.`telefone` AS `telefone`,
  `curso`.`nome` AS `curso`,
  `nivel`.`nome` AS `nivel`
FROM
  `mydb`.`aluno` `aluno`
  INNER JOIN `mydb`.`curso` `curso` ON (`aluno`.`curso_id_curso` = `curso`.`id_curso`)
  INNER JOIN `mydb`.`nivel` `nivel` ON (`curso`.`nivel_id_nivel` = `nivel`.`id_nivel`)
WHERE
  `nivel`.`nome` = 'infantil';

/*/********** PROCEDURE /////////////////////////*************************/
/* / / / / / / / / / / / Qual curso tem mais aluno (basico, avançado, intermediario) / / / / / / / / / / / / / / / / / / / / / / */
CREATE PROCEDURE `procedure_qual_curso_mais_alunos`(IN `id_curso` INT) BEGIN
SELECT
  `curso`.`nome` AS `nome`,
  COUNT(`aluno`.`id_aluno`) AS `quantidade`
FROM
  `mydb`.`curso` `curso`
  INNER JOIN `mydb`.`aluno` `aluno` ON (`curso`.`id_curso` = `aluno`.`curso_id_curso`)
WHERE
  `curso`.`id_curso` = `id_curso`
GROUP BY
  `curso`.`nome`
ORDER BY
  `quantidade` DESC;

END;

Call procedure_qual_curso_mais_alunos(1);

/* / / / / / / / / / / / / // / / / / / MOSTRAR QUANTOS ALUNOS FAZEM TAL MATERIA / / / / / / / / / / / / / / / / / / / / / / / */
CREATE PROCEDURE `procedure_mostrar_quantos_alunos_fazem_materia`(IN `nome_materia` VARCHAR(45)) BEGIN
SELECT
  `materia`.`nome` AS `nome`,
  COUNT(`aluno`.`id_aluno`) AS `quantidade`
FROM
  `mydb`.`materia` `materia`
  INNER JOIN `mydb`.`curso` `curso` ON (
    `materia`.`id_materia` = `curso`.`materia_id_materia`
  )
  INNER JOIN `mydb`.`aluno` `aluno` ON (`curso`.`id_curso` = `aluno`.`curso_id_curso`)
WHERE
  `materia`.`nome` = `nome_materia`
GROUP BY
  `materia`.`nome`
ORDER BY
  `quantidade` DESC;

END;

Call procedure_mostrar_quantos_alunos_fazem_materia(1);

/* / / / / / / / / / / / / mostrar os nomes dos alunos em cada dia de semana / / / / / / / / / / / / / / / / / / / / / / / / / / / / /*/
CREATE PROCEDURE `procedure_agenda_mostrar_alunos_dia_semana`(IN `dia_semana` VARCHAR(45)) BEGIN
SELECT
  `aluno`.`nome` AS `nome`,
  `agenda`.`dia_semana` AS `dia_semana`
FROM
  `mydb`.`agenda` `agenda`
  INNER JOIN `mydb`.`aluno` `aluno` ON (`agenda`.`aluno_id_aluno` = `aluno`.`id_aluno`)
WHERE
  `agenda`.`dia_semana` = `dia_semana`;

END;

/* / / / / / / / / / / / / / / / / / / / # Mostrar todos alunos do professor tal possui /////////////////////////////*/
CREATE PROCEDURE `procedure_mostrar_agenda_aluno_professor`(IN `nome_professor` VARCHAR(45)) BEGIN
SELECT
  `aluno`.`nome` AS `nome`,
  `agenda`.`dia_semana` AS `dia_semana`,
  `agenda`.`horario` AS `horario`
FROM
  `mydb`.`agenda` `agenda`
  INNER JOIN `mydb`.`aluno` `aluno` ON (`agenda`.`aluno_id_aluno` = `aluno`.`id_aluno`)
  INNER JOIN `mydb`.`professor` `professor` ON (
    `agenda`.`professor_id_professor` = `professor`.`id_professor`
  )
WHERE
  `professor`.`nome` = `nome_professor`;

END;

/* /////////////////////////////////////// TRIGGER ///////////////////////////////////////*/
/* /////////////////////////////////////// TRIGGER ///////////////////////////////////////*/
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`verificar_aluno_nome_null` BEFORE
INSERT
  ON `mydb`.`aluno` FOR EACH ROW BEGIN IF NEW.`nome` IS NULL THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Nome não pode ser nulo';

END IF;

END;

/ /
/*////////////////////////////////////////////////////////////*/
/ CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`verificar_telefone_unico`
AFTER
INSERT
  ON `mydb`.`aluno` FOR EACH ROW BEGIN IF NEW.`telefone` IS NOT NULL THEN
SELECT
  COUNT(*) INTO @contador
FROM
  `mydb`.`aluno`
WHERE
  `telefone` = NEW.`telefone`;

IF @contador > 0 THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Esse telefone já está cadastrado no nosso sistema';

END IF;

END IF;

END;

/*///////////////////////////////////////////////////////////*/
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`professor_salario_maior_1500`
AFTER
UPDATE
  ON `mydb`.`professor` FOR EACH ROW BEGIN IF NEW.`salario` < 1500 THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Salario não pode ser menor que 1500';

END IF;

END;