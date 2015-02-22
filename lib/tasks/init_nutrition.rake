require 'csv'

namespace :init do
  task :nutrition => :environment do

    # fruit_nutrition = []

    # CSV.foreach('nutrient_value_fruits.csv', :headers => true, :header_converters => :symbol, :converters => :all) do |row|
    #   fruit_nutrition << row.to_hash
    # end
    # puts fruit_nutrition

    # vegetable_nutrition = []

    # CSV.foreach('nutrient_value_vegetables.csv', :headers => true, :header_converters => :symbol, :converters => :all) do |row|
    #   vegetable_nutrition << row.to_hash
    # end
    # puts vegetable_nutrition

    fish_nutrition = []

    CSV.foreach('nutrient_value_fish.csv', :headers => true, :header_converters => :symbol, :converters => :all) do |row|
      fish_nutrition << row.to_hash
    end
    puts fish_nutrition

  end
end