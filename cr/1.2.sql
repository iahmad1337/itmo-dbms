SELECT DISTINCT TeamName
FROM (
    Sessions
    NATURAL JOIN Teams
)
WHERE ContestId = :ContestId
