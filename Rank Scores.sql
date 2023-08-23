--https://leetcode.com/problems/rank-scores/?envType=study-plan-v2&envId=30-days-of-pandas&lang=pythondata

SELECT score, dense_rank() OVER(ORDER BY score DESC) as "rank"
FROM Scores
