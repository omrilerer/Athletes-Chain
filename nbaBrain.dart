import 'package:flutter/material.dart';
import 'questions.dart';


int _num = 0;

class nbaBrain{

  List<Questions> _qsIN = [
    Questions(1, 'Michael Jordan', 'Two words - [First name] [Last name]', 'The next athlete also wore the number 23 for the better part of his career.', 'He was drafted by the Cavaliers.', 'Lebron James'),
    Questions(2, 'Lebron James', 'Two words - [First name] [Last name]', 'The next athlete won 2 titles with Lebron.', 'He is nicknamed "Flash"', 'Dwyane Wade'),
    Questions(3, 'Dwyane Wade', 'Two words - [First name] [Last name]', 'The next athlete met Wade in the NBA Finals twice.', 'He wore the number 41 his entire career.', 'Dirk Nowitzki'),
    Questions(4, 'Dirk Nowitzki', 'Two words - [First name] [Last name]', 'The next athlete used to be Dirk\'s teammate.', 'He is Slovenian.', 'Luka Doncic'),
    Questions(5, 'Luka Doncic', 'Two words - [First name] [Last name]', 'The next athlete was traded for Luka on their draft night.', 'He played for the Hawks during the 2019/2020 season.', 'Trae Young'),
    Questions(6, 'Trae Young', 'Two words - [First name] [Last name]', 'The next athlete is a Hawks legend.', 'He won the NBA Slam Dunk Contest twice.', 'Dominique Wilkins'),
    Questions(7, 'Dominique Wilkins', 'Two words - [First name] [Last name]', 'The next athlete also wore the number 21 for the better part of his career.', 'He won a title in 2008.', 'Kevin Garnett'),
    Questions(8, 'Kevin Garnett', 'Two words - [First name] [Last name]', 'The next athlete won the title in 2008 with Garnett.', 'He has made the most 3 point FG in NBA history.', 'Ray Allen'),
    Questions(9, 'Ray Allen', 'Two words - [First name] [Last name]', 'The next athlete assisted Allen\'s biggest shot of his career.', 'He was drafted by the Raptors.', 'Chris Bosh'),
    Questions(10, 'Chris Bosh', 'Two words - [First name] [Last name]', 'The next athlete was drafted in the same draft as Bosh did.', 'He played for the Trail Blazers during the 2019/2020 season.', 'Carmelo Anthony'),
    Questions(11, 'Carmelo Anthony', 'Two words - [First name] [Last name]', 'The next athlete was Melo\'s teammate.', 'He has the 7th highest career PPG in NBA history.', 'Allen Iverson'),
    Questions(12, 'Allen Iverson', 'Two words - [First name] [Last name]', 'The next athlete won Iveson in the NBA Finals.', 'He has the 2nd highest scoring performance in NBA history.', 'Kobe Bryant'),
    Questions(13, 'Kobe Bryant', 'Two words - [First name] [Last name]', 'The next athlete could not believe Kobe passed him the ball in the NBA Finals.', 'He was also named: The Panda\'s friend.', 'Ron Artest'),
    Questions(14, 'Ron Artest', 'Two words - [First name] [Last name]', 'The next athlete and Artest were on opposing sides of the "malice in the palace".', 'He is a 4-times DPOY.', 'Ben Wallace'),
    Questions(15, 'Ben Wallace', 'Two words - [First name] [Last name]', 'The next athlete has the same last name as Ben\'s.', 'He is the player who got the most Techs in NBA history.', 'Rasheed Wallace'),
    Questions(16, 'Rasheed Wallace', 'Two words - [First name] [Last name]', 'The next athlete and Rasheed wore the same jersey number during their careers.', 'He was the first ever unanimous MVP.', 'Stephen Curry'),
    Questions(17, 'Stephen Curry', 'Two words - [First name] [Last name]', 'The next athlete was Steph\'s teammate for 6 seasons.', 'He won the Final\'s Mvp.', 'Andre Iguodala'),
    Questions(18, 'Andre Iguodala', 'Two words - [First name] [Last name]', 'The next athlete was drafted in the same draft as Iguodala did.', 'He was the first pick of that draft.', 'Dwight Howard'),
    Questions(19, 'Dwight Howard', 'Two words - [First name] [Last name]', 'The next athlete had a known NBA Slam Dunk Contest rivalry with Dwight.', 'He is 5\'9".', 'Nate Robinson'),
    Questions(20, 'Nate Robinson', 'Two words - [First name] [Last name]', 'The next athlete also won the NBA Slam Dunk Contest.', 'He was the shortest Slam Dunk Contest winner ever.', 'Spud Webb'),
    Questions(21, 'Spud Webb', 'Two words - [First name] [Last name]', 'The next athlete and Spud were drafted by the same franchise.', 'He is a Serbian 7 footer.', 'Darko Milicic'),
    Questions(22, 'Darko Milicic', 'Two words - [First name] [Last name]', 'The next athlete played with Milicic in multiple teams.', 'He is a puerto rican.', 'Carlos Arroyo'),
    Questions(23, 'Carlos Arroyo', 'Two words - [First name] [Last name]', 'The next athlete was also undrafted.', 'He went to Harvard University.', 'Jeremy Lin'),
    Questions(24, 'Jeremy Lin', 'Two words - [First name] [Last name]', 'The next athlete was Lin\'s teammate.', 'He is nicknamed "The Beard".', 'James Harden'),
    Questions(25, 'James Harden', 'Two words - [First name] [Last name]', 'The next athlete and Harden won the MVP playing for the same franchise.', 'He is Nigerian.', 'Hakeem Olajuwon'),
    Questions(26, 'Hakeem Olajuwon', 'Two words - [First name] [Last name]', 'The next athlete has the same nationality as Hakeem\'s.', 'He played for the Timberwolves during the 2019/2020 season.', 'Josh Okogie'),
    Questions(27, 'Josh Okogie', 'Three words - [First name] [Last name(1/2)] [Last name(2/2)]', 'The next athlete and Okogie were drafted the same year.', 'He was traded from the Clippers to the Thunder.', 'Shai Gilgeous Alexander'),
    Questions(28, 'Shai Gilgeous Alexander', 'Three words - [First name] [Last name(1/2)] [Last name(2/2)]', 'The next athlete is Shai\'s cousin.', 'He played for the Pelicans during the 2019/2020 season.', 'Nickeil Alexander Walker'),
    Questions(29, 'Nickeil Alexander Walker', 'Two words - [First name] [Last name]', 'The next athlete and Nickeil were teammates.', 'He is one of the two heaviest players in the NBA (2019/2020).', 'Zion Williamson'),
    Questions(30, 'Zion Williamson', 'Two words - [First name] [Last name]', 'The next athlete is the other half of the two heaviest players in the NBA (2019/2020).', 'He is European.', 'Boban Marjanovic'),
    Questions(31, 'Boban Marjanovic', 'Two words - [First name] [Last name]', 'The next athlete is also european.', 'He was traded from the Hawks to the Thunder.', 'Dennis Schroder'),
    Questions(32, 'Dennis Schroder', 'Two words - [First name] [Last name]', 'The next athlete and Schroder have the same nationality.', 'He played for the Mavericks during the 2019/2020 season.', 'Maxi Kleber'),
    Questions(33, 'Maxi Kleber', 'Two words - [First name] [Last name]', 'The next athlete was also undrafted.', 'He played and coached for the Mavericks.', 'Avery Johnson'),
    Questions(34, 'Avery Johnson', 'Two words - [First name] [Last name]', 'The next athlete is the same height as Avery.', 'He made the finals with the Magic.', 'Jameer Nelson'),
    Questions(35, 'Jameer Nelson', 'Two words - [First name] [Last name]', 'The next athlete and Jameer got to the finals together.', 'He is Turkish.', 'Hedo Turkoglu'),
    Questions(36, 'Hedo Turkoglu', 'Two words - [First name] [Last name]', 'The next athlete and Hedo have the same nationality.', 'He played for the Cavaliers during the 2019/2020 season.', 'Cedi Osman'),
    Questions(37, 'Cedi Osman', 'Two words - [First name] [Last name]', 'The next athlete was Cedi\'s teammate.', 'He is a 2-time All-Star.', 'Andre Drummond'),
    Questions(38, 'Andre Drummond', 'Two words - [First name] [Last name]', 'The next athlete is the only player, other than Drummond, who led the NBA in rebounds per game in the last 5 seasons.', 'He led the NBA in blocks per game in 2016.', 'Hassan Whiteside'),
    Questions(39, 'Hassan Whiteside', 'Two words - [First name] [Last name]', 'The next athlete was Hassan\'s teammate.', 'His brother scored 82 points in a game in China.', 'CJ Mccollum'),
    Questions(40, 'CJ Mccollum', 'Two words - [First name] [Last name]', 'The next athlete and CJ are wearing the same jersey number.', 'He was drafted by the Hornets.', 'Chris Paul'),
    Questions(41, 'Chris Paul', 'Two words - [First name] [Last name]', 'The next athlete also won the Rookie Of The Year award.', 'He wore the numbers: 32, 33, 34 and 36 during his career.', 'Shaquille Oneal'),
    Questions(42, 'Shaquille Oneal', 'Two words - [First name] [Last name]', 'The next athlete coached Shaq during the Laker\'s three-peat.', 'He won 11 titles as a coach, and 2 as a player.', 'Phil Jackson'),
    Questions(43, 'Phil Jackson', 'Two words - [First name] [Last name]', 'The next athlete also won titles as a coach and as a player.', 'He was born in Lebanon.', 'Steve Kerr'),
    Questions(44, 'Steve Kerr', 'Two words - [First name] [Last name]', 'The next athlete was also born in the Middle East.', 'He played the most NBA games without playing in the NBA Playoffs since 1980.', 'Omri Casspi'),
    Questions(45, 'Omri Casspi', 'Two words - [First name] [Last name]', 'The next athlete and Casspi have the same nationality.', 'He played for the Mavericks and for the Pelicans.', 'Gal Mekel'),
    Questions(46, 'Gal Mekel', 'Two words - [First name] [Last name]', 'The next athlete and Mekel were teammates.', 'He won the NBA Slam Dunk Contest.', 'Vince Carter'),
    Questions(47, 'Vince Carter', 'Two words - [First name] [Last name]', 'The next athlete and Carter were drafted by the same franchise.', 'He holds the NBA record for most made threes in a game.', 'Klay Thompson'),
    Questions(48, 'Klay Thompson', 'Two words - [First name] [Last name]', 'The next athlete is also a son of a former NBA player.', 'He has the 2nd career 3pt percentage in NBA history.', 'Seth Curry'),
    Questions(49, 'Seth Curry', 'Two words - [First name] [Last name]', 'The next athlete was also a Santa-Cruz Warrior (G-league).', 'He played for the Heat during the 2019/2020 season.', 'Kendrick Nunn'),
    Questions(50, 'Kendrick Nunn', 'Two words - [First name] [Last name]', 'The next athlete and Nunn were the only rookies since 2007 to score more than 112 points in their first 5 games in the NBA.', 'The new Height measurements listed him as taller than before.', 'Kevin Durant'),
    Questions(51, 'Kevin Durant', 'Two words - [First name] [Last name]', 'The next athlete was the reason to Durant\'s famous line: "You know who I am".', 'He is a 2-time All-NBA defensive team.', 'Patrick Beverley'),
    Questions(52, 'Patrick Beverley', 'Two words - [First name] [Last name]', 'The next athlete and Beverley were interviewed together about that saying from Durant.', 'He is a 3-times Sixth Man Of the Year', 'Lou Williams'),
    Questions(53, 'Lou Williams', 'Two words - [First name] [Last name]', 'The next athlete was also a second round pick in the draft.', 'He was a part of the 2004 Olympic gold medal team.', 'Manu Ginobili'),
    Questions(54, 'Manu Ginobili', 'Two words - [First name] [Last name]', 'The next athlete is also a EuroLeague champion.', 'His sister is a 2-times WNBA MVP.', 'Anthony Parker'),
    Questions(55, 'Anthony Parker', 'Two words - [First name] [Last name]', 'The next athlete was also drafted by the Nets.', 'He was the first pick in the draft.', 'Kenyon Martin'),
    Questions(56, 'Kenyon Martin', 'Two words - [First name] [Last name]', 'The next athlete and Martin have been to the NBA Finals as teammates.', 'He is a NBA champion.', 'Richard Jefferson'),
    Questions(57, 'Richard Jefferson', 'Two words - [First name] [Last name]', 'The next athlete won a title with Jefferson.', 'He is an All-Star game MVP.', 'Kyrie Irving'),
    Questions(58, 'Kyrie Irving', 'Two words - [First name] [Last name]', 'The next athlete was also a part of the 2016 Olympic gold medal team.', 'He was the leading rebounder of that team.', 'Deandre Jordan'),
    Questions(59, 'Deandre Jordan', 'Two words - [First name] [Last name]', 'The next athlete was Deandre\'s teammate.', 'He is a 1-time All Star (2009).', 'Devin Harris'),
    Questions(60, 'Devin Harris', 'Two words - [First name] [Last name]', 'The next athlete was traded for Harris (There were more players in that trade).', 'His famous free throw routine included blowing a kiss to his wife and children.', 'Jason Kidd'),
  ];


  bool nextOne(){
    if (_num < _qsIN.length-1) {
      _num++;
      return true;
    }
    else {
      _num = 0;
      return false;
    }
  }

  int getLVL() {
    return _qsIN[_num].level;
  }

  String getPREV() {
    return _qsIN[_num].prev;
  }

  String getWRDS() {
    return _qsIN[_num].words;
  }

  String getCONN() {
    return _qsIN[_num].connection;
  }

  String getADD() {
    return _qsIN[_num].additional;
  }

  String getANS() {
    return _qsIN[_num].answer;
  }
}




