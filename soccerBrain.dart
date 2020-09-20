import 'package:flutter/material.dart';
import 'questions.dart';


int _num = 0;

class soccerBrain{

  List<Questions> _qsIN2 = [
    Questions(1, 'Ryan Giggs', 'Two words - [First name] [Last name]', 'The next athlete is another Welshman.', 'He played for Real Madrid during the 2019/2020 season.', 'Gareth Bale'),
    Questions(2, 'Gareth Bale', 'Two words - [First name] [Last name]', 'The next athlete is also lefty.', 'He is the top scorer in the history of "La Liga"', 'Lionel Messi'),
    Questions(3, 'Lionel Messi', 'Two words - [First name] [Last name]', 'The next athlete is also a member of the 700+ career goals club.', 'He is the only player in history to score 50+ goals in the three Major leagues of England, Spain and Italy.', 'Cristiano Ronaldo'),
    Questions(4, 'Cristiano Ronaldo', 'Two words - [First name] [Last name]', 'The next athlete was Ronaldo\'s Premier League coach .', 'He has won more Premier League titles than any other coach.', 'Alex Ferguson'),
    Questions(5, 'Alex Ferguson', 'Two words - [First name] [Last name]', 'Ferguson has famously threw his shoe on the next athlete.', 'He used to play for the LA Galaxy.', 'David Beckham'),
    Questions(6, 'David Beckham', 'Two words - [First name] [Last name]', 'The next athlete also played for the LA Galaxy.', 'He has won 8 consecutive championships in different European leagues.', 'Zlatan Ibrahimovic'),
    Questions(7, 'Zlatan Ibrahimovic', 'Two words - [First name] [Last name]', 'The next athlete was Zlatan\'s teammate in PSG.', 'He got to PSG after playing for SSC Napoli.', 'Edinson Cavani'),
    Questions(8, 'Edinson Cavani', 'Two words - [First name] [Last name]', 'The next athlete and Cavani have the same nationality.', 'He famously bit an opposing player.', 'Luis Suarez'),
    Questions(9, 'Luis Suarez', 'Two words - [First name] [Last name]', 'The next athlete was Suarez\'s teammate in Liverpool.', 'He was the captain of that team.', 'Steven Gerrard'),
    Questions(10, 'Steven Gerrard', 'Two words - [First name] [Last name]', 'The next athlete also famously wore the number 8.', 'He scored the winning goal to give Spain their first World Cup trophy.', 'Andres Iniesta'),
    Questions(11, 'Andres Iniesta', 'One word - [First name]', 'The next athlete was Iniesta\'s teammate.', 'He has been coaching in Qatar after retiring.', 'Xavi'),
    Questions(12, 'Xavi', 'Three words - [First name] [Last name(1/2)] [Last name(2/2)]', 'The next athlete and Xavi have the same nationality.', 'He has been the Manchester United Goal Keeper during the 2019/2020 season.', 'David De Gea'),
    Questions(13, 'David De Gea', 'Two words - [First name] [Last name]', 'The next athlete and De Gea were teammates back in 2010.', 'He played for Manchester City during the 2019/2020 season.', 'Sergio Aguero'),
    Questions(14, 'Sergio Aguero', 'Three words - [First name] [Last name(1/2)] [Last name(2/2)]', 'The next athlete and Aguero won multiple Premier League titles together.', 'He is Belgian.', 'Kevin De Bruyne'),
    Questions(15, 'Kevin De Bruyne', 'Two words - [First name] [Last name]', 'The next athlete and De Bruyne are wearing the same jersey number (as of 2020).', 'He left Atletico Madrid for FC Barcelona.', 'Antoine Griezmann'),
    Questions(16, 'Antoine Griezmann', 'Two words - [First name] [Last name]', 'The next athlete and Griezmann have the same nationality.', 'He led Arsenal to a full season without a single loss as their top scorer.', 'Thierry Henry'),
    Questions(17, 'Thierry Henry', 'Three words - [First name] [Last name(1/2)] [Last name(2/2)]', 'The next athlete was Henry\'s teammate in 1999.', 'Only one Italian player has ever scored more goals than this Italian (All competition).', 'Alessandro Del Piero'),
    Questions(18, 'Alessandro Del Piero', 'Two words - [First name] [Last name]', 'The next athlete won the World Cup trophy with Del Piero.', 'He was captain of that team.', 'Fabio Cannavaro'),
    Questions(19, 'Fabio Cannavaro', 'Two words - [First name] [Last name]', 'The next athlete was Cannavaro\'s teammate in Parma.', 'He has the most Italian national team appearances ever.', 'Gianluigi Buffon'),
    Questions(20, 'Gianluigi Buffon', 'One word - [Last name]', 'The next athlete was Buffon\'s teammate.', 'His transfer was the most expensive one in Soccer\'s history at that time.', 'Neymar'),
    Questions(21, 'Neymar', 'One word - [Last name]', 'The next athlete and Neymar have the same nationality.', 'He was the 2004 Copa America top scorer.', 'Adriano'),
    Questions(22, 'Adriano', 'Two words - [First name] [Last name]', 'The next athlete was Adriano\'s teammate in Inter.', 'He famously left FC Barcelona for Real Madrid.', 'Luis Figo'),
    Questions(23, 'Luis Figo', 'One word - [Nickname]', 'The next athlete and Figo have the same nationality.', 'He played for Manchester United from 2007 to 2015.', 'Nani'),
    Questions(24, 'Nani', 'Three words - [First name] [Last name(1/2)] [Last name(2/2)]', 'The next athlete was Nani\'s teammate in Fenerbahce.', 'He is the Netherland\'s (Holland) national team top scorer in history.', 'Robin Van Persie'),
    Questions(25, 'Robin Van Persie', 'Three words - [First name] [Last name(1/2)] [Last name(2/2)]', 'The next athlete and Van Persie have the same nationality.', 'He played for Manchester United and for Real Madrid.', 'Ruud Van Nistelrooy'),
    Questions(26, 'Ruud Van Nistelrooy', 'One word - [Last name]', 'The next athlete was Van Nistelrooy\'s teammate in Real Madrid during the 2007/2008 season.', 'He was part of the 2005 Champions League winning team.', 'Dudek'),
    Questions(27, 'Dudek', 'Two words - [First name] [Last name]', 'The next athlete and Dudek have the same nationality.', 'He once scored 5 goals in 9 minutes.', 'Robert Lewandowski'),
    Questions(28, 'Robert Lewandowski', 'Two words - [First name] [Last name]', 'The next athlete also left Dortmund for Bayern Munich.', 'He came back to Dortmund.', 'Mario Gotze'),
    Questions(29, 'Mario Gotze', 'Two words - [First name] [Last name]', 'The next athlete wore the same jersey number for the most of his career as Gotze did in Dortmund.', 'He is the England\'s national team top scorer in history.', 'Wayne Rooney'),
    Questions(30, 'Wayne Rooney', 'Two words - [First name] [Last name]', 'The next athlete and Rooney were teammates.', 'He is the most decorated Irish player ever (tied with one more player).', 'Roy Keane'),
    Questions(31, 'Roy Keane', 'Two words - [First name] [Last name]', 'The next athlete and Roy have the same last name.', 'He played more than 200 games for Tottenham.', 'Robbie Keane'),
    Questions(32, 'Robbie Keane', 'Two words - [First name] [Last name]', 'The next athlete and Robbie were teammates.', 'He is considered to be the greatest US soccer player ever.', 'Landon Donovan'),
    Questions(33, 'Landon Donovan', 'Two words - [First name] [Last name]', 'The next athlete and Donovan have the same nationality.', 'He played for Manchester United from 2003 to 2007.', 'Tim Howard'),
    Questions(34, 'Tim Howard', 'One word - [Last name]', 'The next athlete and Howard were teammates in Everton.', 'He is a German who played for Arsenal during the 2019/2020 season.', 'Mustafi'),
    Questions(35, 'Mustafi', 'Three words - [First name] [Last name(1/2)] [Last name(2/2)]', 'The next athlete wore the same jersey number as Mustafi has in Arsenal.', 'He coached Manchester United after Jose Mourinho.', 'Ole Gunnar Solskjaer'),
    Questions(36, 'Ole Gunnar Solskjaer', 'Two words - [First name] [Last name]', 'The next athlete and Ole have the same nationality.', 'He played for Dortmund during the 2019/2020 season.', 'Erling Haaland'),
    Questions(37, 'Erling Haaland', 'Two words - [First name] [Last name]', 'The next athlete was Haaland\'s teammate in the 2018/2019 season.', 'He was the leading scorer of the team that season.', 'Moanes Dabour'),
    Questions(38, 'Moanes Dabour', 'Two words - [First name] [Last name]', 'The next athlete and Dabour have the same nationality.', 'He played for Arsenal, Chelsea, Liverpool and West Ham United.', 'Yossi Benayoun'),
    Questions(39, 'Yossi Benayoun', 'One word - [First name]', 'The next athlete was Benayoun\'s teammate in Racing Santander.', 'He also played for Manchester United and for Atletico Madrid.', 'Ricardo'),
    Questions(40, 'Ricardo', 'One word - [First name]', 'The next athlete and Ricardo have the same nationality.', 'He played more than 550 games for Real Madrid, and then moved to the "Bundesliga".', 'Raul'),
    Questions(41, 'Raul', 'One word - [Last name]', 'The next athlete was Raul\'s teammate in Schalke 04.', 'He also played for Ajax, Real Madrid and AC Milan.', 'Huntelaar'),
    Questions(42, 'Huntelaar', 'One word - [Nickname]', 'The next athlete was Huntelaar\'s teammate.', 'He was born and raised in Brazil, but played for a different country\'s national team.', 'Pepe'),
    Questions(43, 'Pepe', 'Two words - [First name] [Last name]', 'The next athlete and Pepe wore the same number during their careers.', 'He has played over 150 games for Arsenal and over 200 for Chelsea.', 'Ashley Cole'),
    Questions(44, 'Ashley Cole', 'Two words - [First name] [Last name]', 'The next athlete also played more than 80 games at the English national team.', 'In his first full season in the Premier League (Liverpool) he finished as joint top scorer.', 'Michael Owen'),
    Questions(45, 'Michael Owen', 'Two words - [First name] [Last name]', 'The next athlete has also won the Ballon d\'Or.', 'He is currently Juventu\'s Vice-chairman.', 'Pavel Nedved'),
    Questions(46, 'Pavel Nedved', 'Two words - [First name] [Last name]', 'The next athlete and Nedved have the same nationality.', 'He is 2.02 meters tall (approximately 6\'7.5").', 'Jan Koller'),
    Questions(47, 'Jan Koller', 'One word - [Nickname]', 'The next athlete has also scored more than 50 goals for his national team.', 'In March 2020, he was alleged to have used a fake passport to enter Paraguay.', 'Ronaldinho'),
    Questions(48, 'Ronaldinho', 'One word - [Last name]', 'The next athlete has won the Ballon d\'Or one year before Ronaldinho did.', 'He has scored 127 goals for AC Milan.', 'Shevchenko'),
    Questions(49, 'Shevchenko', 'Two words - [First name] [Last name]', 'The next athlete had also coached his country\'s national team after playing for it.', 'He got to the World Cup finals twice as a player.', 'Diego Maradona'),
    Questions(50, 'Diego Maradona', 'Two words - [First name] [Last name]', 'The next athlete is also 1.65 meters tall (approximately 5\'5").', 'He has played more than 200 games for PSG, and scored 5 goals from 2012 to 2020.', 'Marco Verratti'),
  ];


  bool nextOne(){
    if (_num < _qsIN2.length-1) {
      _num++;
      return true;
    }
    else {
      _num = 0;
      return false;
    }
  }

  int getLVL() {
    return _qsIN2[_num].level;
  }

  String getPREV() {
    return _qsIN2[_num].prev;
  }

  String getWRDS() {
    return _qsIN2[_num].words;
  }

  String getCONN() {
    return _qsIN2[_num].connection;
  }

  String getADD() {
    return _qsIN2[_num].additional;
  }

  String getANS() {
    return _qsIN2[_num].answer;
  }
}




