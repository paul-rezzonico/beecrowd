WITH moyennes(id_candidates, moyenne)
    AS 
    (SELECT score.candidate_id, ROUND(((score.math*2)+(score.specific*3)+(score.project_plan*5))/10,2)
    FROM score)

SELECT candidate.name as name, moyenne as avg FROM candidate
JOIN moyennes
    ON candidate.id=moyennes.id_candidates
ORDER BY avg DESC;