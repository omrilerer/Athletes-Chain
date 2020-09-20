# Athletes-Chain
A simple mobile game for IOS and Android, in which you need to identify the next athlete, using the following:
1. Your previous answer.
2. The connection between the last athlete and the next one.
3. Another hint.

For now, there are 60 levels for the NBA mode, and 50 for the Soccer one (Tennis and Track&Field should follow soon).

About the code:
The "nbaBrain" and "soccerBrain" files are the questions banks, holding all the necessary arguments for each level, while using 
my own Class called "Questions".

The home screen design is determined in the "homePage", using both built-in widgets and made by me "GoodCard" widget.
More design files are: "nbaPage" and "soccerPage" (for the questions) and "about" (for the credits).  
All the routes and all the connections are named and initialized in the "main" file.

