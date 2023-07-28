SELECT su.hacker_id, ha.name FROM hackers ha 
JOIN submissions su ON ha.hacker_id = su.hacker_id JOIN challenges ch  ON ch.challenge_id=su.challenge_id JOIN difficulty di ON di.difficulty_level = ch.difficulty_level 
WHERE su.score = di.score 
GROUP BY su.hacker_id, ha.name HAVING count(su.challenge_id)>1 
ORDER BY COUNT(su.challenge_id) DESC, su.hacker_id ASC