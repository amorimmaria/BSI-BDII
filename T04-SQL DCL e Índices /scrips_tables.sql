SET FOREIGN_KEY_CHECKS=0; -- to disable them

drop table if exists atividade_membro cascade;
drop table if exists atividade_projeto cascade;
drop table if exists atividade cascade;
drop table if exists membro cascade;
drop table if exists projeto cascade;
drop table if exists equipe cascade;
drop table if exists departamento cascade;
drop table if exists funcionario cascade;

SET FOREIGN_KEY_CHECKS=1; -- to re-enable them


CREATE TABLE `funcionario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,  
  `nome` varchar(15) NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `supervisor` int(11) DEFAULT NULL,
  `depto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  CONSTRAINT `funcSuperFK` FOREIGN KEY (`supervisor`) REFERENCES `funcionario`(`codigo`) on delete set null on update cascade
);

CREATE TABLE `departamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(15) NOT NULL,
  `descricao` varchar(25) NOT NULL,
  `gerente` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `sigla` (`sigla`),
  CONSTRAINT `depGerenteFK` FOREIGN KEY (`gerente`) REFERENCES `funcionario`(`codigo`) on delete set null on update cascade
);

alter table funcionario ADD CONSTRAINT `funcDeptoFK` FOREIGN KEY (`depto`) REFERENCES `departamento` (`codigo`) on delete set null on update cascade;

CREATE TABLE `equipe` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeEquipe` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
);

CREATE TABLE `membro` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codEquipe` int(11) DEFAULT NULL,
  `codFuncionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  foreign key (codEquipe) references equipe(codigo) on delete set null,
  foreign key (codFuncionario) references funcionario(codigo) on delete set null
);


CREATE TABLE `projeto` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `depto` int(11) DEFAULT NULL,
  `responsavel` int(11) DEFAULT NULL,
  `dataInicio` date DEFAULT NULL,
  `dataFim` date DEFAULT NULL,
  `situacao` varchar(45) DEFAULT NULL,
  `dataConclusao` date DEFAULT NULL,
  `equipe` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  foreign key (depto) references departamento(codigo) on delete set null,
  foreign key (responsavel) references funcionario(codigo) on delete set null,
  foreign key (equipe) references equipe(codigo) on delete set null
);

CREATE TABLE `atividade` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `dataInicio` date DEFAULT NULL,
  `dataFim` date DEFAULT NULL,
  `situacao` varchar(45) DEFAULT NULL,
  `dataConclusao` date DEFAULT NULL,
  PRIMARY KEY (`codigo`)
);

CREATE TABLE `atividade_projeto` (
  `codAtividade` int(11) NOT NULL,
  `codProjeto` int(11) NOT NULL,
  PRIMARY KEY (`codProjeto`, `codAtividade`),
  foreign key (`codAtividade`) references atividade(codigo),
  foreign key (`codProjeto`) references projeto(codigo)
);

CREATE TABLE `atividade_membro` (
  `codAtividade` int(11) NOT NULL,
  `codMembro` int(11) NOT NULL,
  PRIMARY KEY (`codAtividade`, `codMembro`),
  foreign key (`codAtividade`) references atividade(codigo),
  foreign key (`codMembro`) references membro(codigo)
);