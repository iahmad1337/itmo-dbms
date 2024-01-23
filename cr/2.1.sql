SELECT DISTINCT TeamId
FROM (
    Runs
    NATURAL JOIN Sessions
)
WHERE ContestId = :ContestId AND Letter = :Letter AND Accepted = 0
