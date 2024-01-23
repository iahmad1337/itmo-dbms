SELECT DISTINCT ContestId, RunsId
FROM (
    Runs
    NATURAL JOIN Sessions
)
WHERE ContestId = :ContestId AND Accepted = 1
