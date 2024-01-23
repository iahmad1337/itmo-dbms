SELECT DISTINCT TeamId
FROM (
    Runs
    NATURAL JOIN Sessions
)
WHERE ContestId = :ContestId AND Accepted = 0
