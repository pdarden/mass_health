require 'csv'

file_data = Rails.root + 'db/data/mass_health_data.csv'

def replace_signs(string)
  string.gsub(',','').gsub('$','') if !string.nil?
end

CSV.foreach(file_data, headers: true) do |row|
  TownHealthRecord.create(
    geography: row["Geography"],
    total_pop_y2005: replace_signs(row["total pop, year 2005"]),
    age_0_19_y2005: replace_signs(row["age 0-19, year 2005"]),
    age_65_plus_y2005: replace_signs(row["age 65+, year 2005"]),
    per_capita_income_y2000: replace_signs(row["Per Capita Income, year 2000"]),
    person_living_below_200pc_poverty_y2000: replace_signs(row["Persons Living Below 200% Poverty, year 2000 "]),
    pc_all_persons_living_below_200pc_poverty_level_y2000: row["% all Persons Living Below 200% Poverty Level, year 2000"],
    kotelchuck: row["% adequacy prenatal care (kotelchuck)"],
    pc_c_section_deliveries_y2005_y2008: row["% C-section deliveries, 2005-2008"],
    number_of_infant_deaths_y2005_y2008: row["Number of infant deaths, 2005-2008"],
    infant_mortality_rate_y2005_y2008: row["Infant mortality rate (deaths per 1000 live births), 2005-2008"],
    pc_low_birthweight_y2005_y2008: row["% low birthweight 2005-2008"],
    pc_multiple_births_y2005_y2008: row["% multiple births, 2005-2008"],
    pc_publicly_financed_pernatal_care_y2005_y2008: row["% publicly financed prenatal care, 2005-2008"],
    pc_teen_births_y2005_y2008: row["% teen births, 2005-2008"]
  )
end
