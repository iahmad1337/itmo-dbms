SELECT RunId, TeamId, SubmitTime, Accepted
FROM (
    Runs
    NATURAL JOIN Sessions
)
WHERE ContestId = :ContestId AND Letter = :Letter
