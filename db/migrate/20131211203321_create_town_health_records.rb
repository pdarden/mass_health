class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.integer :age_0_19_y2005
      t.integer :age_65_plus_y2005
      t.integer :per_capita_income_y2000
      t.integer :person_living_below_200pc_poverty_y2000
      t.integer :pc_all_persons_living_below_200pc_poverty_level_y2000
      t.string :kotelchuck
      t.integer :pc_c_section_deliveries_y2005_y2008
      t.string :number_of_infant_deaths_y2005_y2008
      t.string :infant_mortality_rate_y2005_y2008
      t.string :pc_low_birthweight_y2005_y2008
      t.string :pc_multiple_births_y2005_y2008
      t.string :pc_publicly_financed_pernatal_care_y2005_y2008
      t.string :pc_teen_births_y2005_y2008
      t.timestamps
    end
  end
end
