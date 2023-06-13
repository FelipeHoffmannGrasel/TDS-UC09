create schema TrabalhoCriacaoTabelasMYSQL;
use TrabalhoCriacaoTabelasMYSQL;

CREATE TABLE atletas (
Name_atletas Varchar(100),
Noc_atletas Varchar(100),
Discipline_atletas Varchar(100)
);

CREATE TABLE coaches (
Name_coaches Varchar(100),
Noc_coaches Varchar(100),
Discipline_coaches Varchar(100),
event_coaches Varchar(100)
);

CREATE TABLE entriesGender (
disciplines_gender Varchar(100),
female_gender INT NOT NULL,
male_gender INT NOT NULL,
total_gender INT NOT NULL
);

CREATE TABLE medals (
rank_medals INT NULL,
team_medals Varchar(100),
gold_medals INT  NULL,
silver_medals INT  NULL,
bronze_medals INT  NULL,
total_medals INT NULL,
rank_by_total INT NULL
);

CREATE TABLE teams (
Name_teams Varchar(100),
Discipline_teams Varchar(100),
Noc_teams Varchar(100),
event_teams Varchar(100)
);

select * from atletas;
select * from coaches;
select * from entriesgender;
select * from medals;
select * from teams;

-- 1. quem são os tecnicos e atletas das equipes de handball?
select distinct c.Name_coaches as treinador, a.Name_atletas as atleta
from coaches c
join atletas a on a.Noc_atletas = c.Noc_coaches
where c.Discipline_coaches = 'Handball';

-- 3. não funciona pois a tabela de medalhas não mostra quais atletas ou times ganharam medalhas, apenas quais paises ganharam e suas quantidades e tipos.

-- 4. não funciona, podemos mostrar quantas medalhas a noruega ganhou, mas não quais atletas conquistaram elas. 

-- 5. não funciona, não temos informações suficientes nas tabelas para saber quais brasileiros não ganharam medalhas.

