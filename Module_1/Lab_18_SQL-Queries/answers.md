![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab 18 | My first queries

Please, download the file applestore.csv.
Install MySQL/Postgresql on your computer.
Create a database
Upload the file as a new table of your database

Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. What are the different genres?**

'Book'
'Business'
'Education'
'Entertainment'
'Finance'
'Food & Drink'
'Games'
'Health & Fitness'
'Lifestyle'
'Medical'
'Music'
'Navigation'
'News'
'Photo & Video'
'Productivity'
'Reference'
'Shopping'
'Social Networking'
'Sports'
'Travel'
'Utilities'
'Weather'



**2. Which is the genre with the most apps rated?**

Games is the genre with the most apps rated (8607404)

**3. Which is the genre with most apps?**

Games has the most apps (162)

**4. Which is the one with least?**

Medical has the least apps (1)

**5. Find the top 10 apps most rated.**

'Facebook','2974676'
'Pandora - Music & Radio','1126879'
'Pinterest','1061624'
'Bible','985920'
'Angry Birds','824451'
'Fruit Ninja Classic','698516'
'Solitaire','679055'
'PAC-MAN','508808'
'Calorie Counter & Diet Tracker by MyFitnessPal','507706'
'The Weather Channel: Forecast,Radar & Alerts','495626'

**6. Find the top 10 apps best rated by users.**

Top 10 Best rated apps (ranked by total number of ratings)

'Plants vs. Zombies','5','426463'
'Domino\'s Pizza USA','5','258624'
'Plants vs. Zombies HD','5','163598'
'TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF','5','28388'
'Sworkit - Custom Workouts for Exercise & Fitness','5','16819'
'Fieldrunners 2','5','14214'
'Headspace','5','12819'
':) Sudoku +','5','11447'
'Dragon Island Blue','5','9119'
'Sudoku +','5','5397'

**7. Take a look at the data you retrieved in question 5. Give some insights.**

9 of 10 Top 10 apps are free (with the only exception of Fruit Ninja Classic).
They are available in 19 to 20 languages on average (between 1 to 45 lang., mode = 10 / median = 16), with the only exception of Pandora available in only 1 language).


'Facebook','2974676','Social Networking','0','4','29'
'Pandora - Music & Radio','1126879','Music','0','12','1'
'Pinterest','1061624','Social Networking','0','12','27'
'Bible','985920','Reference','0','4','45'
'Angry Birds','824451','Games','0','4','10'
'Fruit Ninja Classic','698516','Games','1.99','4','13'
'Solitaire','679055','Games','0','4','11'
'PAC-MAN','508808','Games','0','4','10'
'Calorie Counter & Diet Tracker by MyFitnessPal','507706','Health & Fitness','0','4','19'
'The Weather Channel: Forecast,Radar & Alerts','495626','Weather','0','4','33'




**8. Take a look at the data you retrieved in question 6. Give some insights.**

7 of the 10 best rated apps are not free.
6 of the best rated apps are Games.
Games in the top 10 rated games are available in 1 to 12 languages, 1 language being the most frequent (mode).
60% rated 4+ / 40% are rated 9+
Apps are in their 1st to 5th version, in its 2nd/3rd version on average (counting only the main releases).
Supports between 24 and 43 devices (37 on average).

'Plants vs. Zombies','5','426463','Games','0.99','9','5'
'Domino\'s Pizza USA','5','258624','Food & Drink','0','4','2'
'Plants vs. Zombies HD','5','163598','Games','0.99','9','5'
'TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF','5','28388','Business','4.99','4','9'
'Sworkit - Custom Workouts for Exercise & Fitness','5','16819','Health & Fitness','0','4','12'
'Fieldrunners 2','5','14214','Games','2.99','9','1'
'Headspace','5','12819','Health & Fitness','0','4','1'
':) Sudoku +','5','11447','Games','2.99','4','1'
'Dragon Island Blue','5','9119','Games','0.99','9','2'
'Sudoku +','5','5397','Games','4.99','4','7'

**9. Now compare the data from questions 5 and 6. What do you see?**

**10. How could you take the top 3 regarding both user ratings and number of votes?**

**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
