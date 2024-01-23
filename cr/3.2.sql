DELETE FROM Runs
WHERE SessionId IN (
    SELECT DISTINCT SessionId
    FROM (
        Sessions
        natural join Contests
    )
    WHERE ContestName = :ContestName
)
