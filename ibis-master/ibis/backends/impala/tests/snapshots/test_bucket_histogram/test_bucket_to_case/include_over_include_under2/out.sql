CAST(CASE
  WHEN `f` < 10 THEN 0
  WHEN 10 <= `f` THEN 1
  ELSE CAST(NULL AS tinyint)
END AS double)