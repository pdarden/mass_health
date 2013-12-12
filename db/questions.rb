# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.select(:geography).where("geography != 'Massachusetts Total'").order('age_65_plus_y2005 DESC').limit(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.select(:geography).where("geography != 'Massachusetts Total'").order('age_0_19_y2005 DESC').limit(3)

# What 5 towns have the lowest per capita income?
TownHealthRecord.select(:geography, :id).where("geography != 'Massachusetts Total'").order('per_capita_income_y2000').limit(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.select(:geography, :id).where("geography != 'Boston' AND geography != 'Becket' AND geography != 'Beverly' AND geography != 'Massachusetts Total'").order('pc_teen_births_y2005_y2008 DESC').limit(1)

# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.select(:geography, :id).where("geography != 'Boston' AND geography != 'Massachusetts Total'").order('infant_mortality_rate_y2005_y2008 DESC').limit(1)
