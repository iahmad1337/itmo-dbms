SELECT DISTINCT Letter
FROM (
    Runs
    NATURAL JOIN Sessions
)
GROUP BY Letter
WHERE COUNT(*) == 0 and ContestId = 1
