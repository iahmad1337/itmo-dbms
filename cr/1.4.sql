SELECT RunId, SessionId, Letter, SubmitTime
FROM (
    Runs
    NATURAL JOIN Sessions
)
WHERE ContestId = :ContestId AND Accepted = 0
