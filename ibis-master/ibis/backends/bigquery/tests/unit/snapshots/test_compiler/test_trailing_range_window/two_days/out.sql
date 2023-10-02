SELECT
  t0.*,
  avg(t0.`float_col`) OVER (ORDER BY UNIX_MICROS(t0.`timestamp_col`) ASC RANGE BETWEEN EXTRACT(DAY FROM INTERVAL '2' DAY) * 86400000000 PRECEDING AND EXTRACT(DAY FROM INTERVAL '0' DAY) * 86400000000 FOLLOWING) AS `win_avg`
FROM functional_alltypes AS t0