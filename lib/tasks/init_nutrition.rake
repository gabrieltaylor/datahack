require 'csv'

namespace :init do
  task :nutrition => :environment do

    fruit_nutrition = []

    CSV.foreach('nutrient_value_fruits.csv', :headers => true) do |row|
      fruit_nutrition << row.to_hash
    end
    puts fruit_nutrition

    vegetable_nutrition = []

    CSV.foreach('nutrient_value_vegetables.csv', :headers => true) do |row|
      vegetable_nutrition << row.to_hash
    end
    puts vegetable_nutrition

  end
end