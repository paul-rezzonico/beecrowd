WITH nb_match(name, nombre)
    AS
    (SELECT name, COUNT(*) FROM matches
    JOIN teams 
        ON teams.id=matches.team_1 or teams.id=matches.team_2
        GROUP BY name),

    draws(name, nb_draws)
    AS
    (SELECT name, COUNT(*) FROM matches 
    JOIN teams 
        ON teams.id=matches.team_1 or teams.id=matches.team_2
        WHERE team_1_goals=team_2_goals
        GROUP BY name),

    victoire(name, nb_victoire)
    AS
    (SELECT name, COUNT(*) FROM matches
    JOIN teams 
        ON teams.id=matches.team_1 or teams.id=matches.team_2
        WHERE (team_1_goals>team_2_goals and teams.id=matches.team_1) or (team_2_goals>team_1_goals and teams.id=matches.team_2)
        GROUP BY name),

    defaite(name, nb_defeat)
    AS
    (SELECT name, COUNT(*) FROM matches
    JOIN teams 
        ON teams.id=matches.team_1 or teams.id=matches.team_2
        WHERE (team_1_goals<team_2_goals and teams.id=matches.team_1) or (team_2_goals<team_1_goals and teams.id=matches.team_2)
        GROUP BY name)

SELECT nb_match.name, COALESCE(nb_match.nombre, 0) AS matches, COALESCE(victoire.nb_victoire, 0) AS victories, COALESCE(defaite.nb_defeat, 0) AS defeats, COALESCE(draws.nb_draws, 0) AS draws, (COALESCE(victoire.nb_victoire, 0)*3+COALESCE(draws.nb_draws,0)) AS score FROM nb_match
NATURAL LEFT JOIN draws
NATURAL LEFT JOIN victoire
NATURAL LEFT JOIN defaite
ORDER BY score DESC;


