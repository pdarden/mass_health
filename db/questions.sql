-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography
  FROM town_health_records
  WHERE geography != 'Massachusetts Total'
  ORDER BY age_65_plus_y2005 DESC LIMIT 3;

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography
  FROM town_health_records
  WHERE geography != 'Massachusetts Total'
  ORDER BY age_0_19_y2005 DESC LIMIT 3;

-- What 5 towns have the lowest per capita income?
SELECT geography
  FROM town_health_records
  WHERE geography != 'Massachusetts Total'
  ORDER BY per_capita_income_y2000 LIMIT 5;

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography
  FROM town_health_records
  WHERE (geography != 'Boston' AND geography != 'Becket' AND geography != 'Beverly' AND geography != 'Massachusetts Total')
  ORDER BY pc_teen_births_y2005_y2008 DESC LIMIT 1;

-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography
  FROM town_health_records
  WHERE (geography != 'Boston' AND geography != 'Massachusetts Total')
  ORDER BY infant_mortality_rate_y2005_y2008 DESC LIMIT 1;
