SELECT Scores.Score, COUNT(Ranking.Score) AS RANK
  FROM Scores
     , (
       SELECT DISTINCT Score
         FROM Scores
       ) Ranking
 WHERE Scores.Score <= Ranking.Score
 GROUP BY Scores.Id, Scores.Score
 ORDER BY Scores.Score DESC;
 
 
 
 
 
SELECT Scores.Score, Q3.Rank
FROM(
    SELECT Q1.Score as Score, COUNT(Q1.Score) as Rank
    FROM 
        (SELECT DISTINCT Score from Scores) as Q1,
        (SELECT DISTINCT Score from Scores) as Q2
    WHERE Q1.Score <= Q2.Score
    GROUP BY Q1.Score
    ) as Q3, Scores
WHERE Q3.Score = Scores.Score
ORDER BY Scores.Score DESC
