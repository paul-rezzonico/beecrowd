WITH premier(nom_premier)
    AS
    (SELECT 'Podium: '|| league.team FROM league
    WHERE league.position=1 or league.position=2 or league.position=3),

    dernier(nom_dernier)
    AS 
    (SELECT 'Demoted: '||league.team FROM league 
    ORDER BY position DESC
    LIMIT 2)

SELECT premier.nom_premier AS name FROM premier 
UNION ALL
(SELECT dernier.nom_dernier AS name FROM dernier
ORDER BY name);



