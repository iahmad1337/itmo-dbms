SELECT TeamId, COUNT(DISTINCT Letter) AS Opened
FROM (
    Sessions
    NATURAL JOIN Runs
)
GROUP BY TeamId
