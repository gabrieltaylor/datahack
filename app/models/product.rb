class Product
  attr_reader :id, :name, :provinces, :months, :context, :nutrition

  def initialize(id:, name:, provinces:, context:, months:, nutrition:)
    @id = id
    @name = name
    @provinces = provinces
    @months = months
    @context = context
    @nutrition = nutrition
  end

  def self.fruits
    all.select{ |p| p.context == "fruit" }
  end

  def self.vegetables
    all.select{ |p| p.context == "vegetable" }
  end

  def self.harvested_in(month:, province: nil)
    if province
      all.select { |p| p.months.include?(month) }
      .sort { |a,b| b.provinces[province] <=> a.provinces[province] }
    else
      all.select { |p| p.months.include?(month) }
    end
  end

  def self.all
    products = []
    @@list.each_with_index do |item, index|
      products << new(id: index, name: item[:name], provinces: item[:provinces], context: item[:context], months: item[:months], nutrition: item[:nutrition])
    end
    products
  end

  def as_json(options = nil)
    {
      id: id,
      name: name,
      provinces: provinces,
      months: months,
      context: context,
      nutrition: nutrition
    }
  end

  @@list = [
  {
    name: "Artichokes", months: ["August", "September", "October"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: { :measure=>"1 medium", :weight=>120, :calories=>60, :protein=>4, :carbohydrate=>13, :total_sugar=>1, :total_dietary_fibre=>4.7, :calcium=>54, :iron=>1.5, :sodium=>114, :potassium=>425, :vitamin_a=>11, :vitamin_c=>12, :vitamin_b12=>0}
  },
  {
    name: "Asparagus", months: ["May", "June"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 7.4,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 72.8,
      "Prince Edward Island" => 0,
      "Quebec" => 19.8,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: { :measure=>"6 spears", :weight=>90, :calories=>18, :protein=>2, :carbohydrate=>3, :total_sugar=>1, :total_dietary_fibre=>1.6, :calcium=>18, :iron=>0.7, :sodium=>8, :potassium=>178, :vitamin_a=>41, :vitamin_c=>14, :vitamin_b12=>0}
  },
  {
    name: "Beets", months: ["January", "February", "March", "April", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 9.4,
      "Manitoba" => 0,
      "New Brunswick" => 0.1,
      "Newfoundland and Labrador" => 0.4,
      "Nova Scotia" => 2.2,
      "Ontario" => 38.2,
      "Prince Edward Island" => 0,
      "Quebec" => 48.8,
      "Saskatchewan" => 0.2 
    }, context: "vegetable",
    nutrition: {:measure=>"125mL", :weight=>90, :calories=>40, :protein=>2, :carbohydrate=>9, :total_sugar=>7, :total_dietary_fibre=>1.8, :calcium=>14, :iron=>0.7, :sodium=>69, :potassium=>274, :vitamin_a=>2, :vitamin_c=>3, :vitamin_b12=>0}
  },
  {
    name: "Brocolli", months: ["June", "July", "August", "September", "October"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 9.3,
      "Manitoba" => 0,
      "New Brunswick" => 0.5,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 30.9,
      "Prince Edward Island" => 0,
      "Quebec" => 58.9,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: { :measure=>"125mL", :weight=>46, :calories=>16, :protein=>1, :carbohydrate=>3, :total_sugar=>1, :total_dietary_fibre=>1.1, :calcium=>22, :iron=>0.3, :sodium=>15, :potassium=>147, :vitamin_a=>15, :vitamin_c=>41, :vitamin_b12=>0}
  },
  {
    name: "Brussels Sprouts", months: ["September", "October", "November"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 47.9,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0.4,
      "Ontario" => 41.5,
      "Prince Edward Island" => 0,
      "Quebec" => 10,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"4 sprouts", :weight=>84, :calories=>33, :protein=>3, :carbohydrate=>6, :total_sugar=>2, :total_dietary_fibre=>3.2, :calcium=>26, :iron=>0.7, :sodium=>15, :potassium=>255, :vitamin_a=>36, :vitamin_c=>45, :vitamin_b12=>0}
  },
  {
    name: "Cabbage", months: ["January", "February", "March", "April", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 4.1,
      "British Columbia" => 6.8,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0.4,
      "Nova Scotia" => 0,
      "Ontario" => 38.5,
      "Prince Edward Island" => 0.5,
      "Quebec" => 48,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"125mL", :weight=>37, :calories=>9, :protein=>1, :carbohydrate=>2, :total_sugar=>1, :total_dietary_fibre=>0.7, :calcium=>17, :iron=>0.2, :sodium=>7, :potassium=>91, :vitamin_a=>3, :vitamin_c=>12, :vitamin_b12=>0}
  },
  {
    name: "Cauliflower", months: ["June", "July", "August", "September", "October", "November"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 26.0,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 25,
      "Prince Edward Island" => 0,
      "Quebec" => 48.8,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: { :measure=>"125mL", :weight=>53, :calories=>13, :protein=>1, :carbohydrate=>3, :total_sugar=>1, :total_dietary_fibre=>0.9, :calcium=>12, :iron=>0.2, :sodium=>16, :potassium=>160, :vitamin_a=>1, :vitamin_c=>25, :vitamin_b12=>0}
  },
  {
    name: "Celery", months: ["July", "August", "September", "October"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 3.3,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 34,
      "Prince Edward Island" => 0,
      "Quebec" => 62,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>1, :weight=>40, :calories=>6, :protein=>"tr", :carbohydrate=>1, :total_sugar=>1, :total_dietary_fibre=>0.6, :calcium=>16, :iron=>0.1, :sodium=>32, :potassium=>104, :vitamin_a=>9, :vitamin_c=>1, :vitamin_b12=>0}
  },
  {
    name: "Cucumbers", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0.3,
      "British Columbia" => 1.3,
      "Manitoba" => 0.4,
      "New Brunswick" => 0.3,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 61.5,
      "Prince Edward Island" => 0,
      "Quebec" => 35.7,
      "Saskatchewan" => 0.1 
    }, context: "vegetable",
    nutrition: {:measure=>"4 slices", :weight=>28, :calories=>3, :protein=>"tr", :carbohydrate=>1, :total_sugar=>"tr", :total_dietary_fibre=>0.2, :calcium=>4, :iron=>0.1, :sodium=>1, :potassium=>38, :vitamin_a=>1, :vitamin_c=>1, :vitamin_b12=>0}
  },
  {
    name: "Eggplant", months: ["August", "September", "October"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"125mL", :weight=>52, :calories=>18, :protein=>"tr", :carbohydrate=>5, :total_sugar=>2, :total_dietary_fibre=>1.3, :calcium=>3, :iron=>0.1, :sodium=>1, :potassium=>64, :vitamin_a=>1, :vitamin_c=>1, :vitamin_b12=>0}
  },
  {
    name: "Lettuce", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 7.8,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 4.2,
      "Prince Edward Island" => 0,
      "Quebec" => 87.8,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: { :measure=>"250mL", :weight=>58, :calories=>8, :protein=>1, :carbohydrate=>2, :total_sugar=>1, :total_dietary_fibre=>0.7, :calcium=>10, :iron=>0.2, :sodium=>6, :potassium=>82, :vitamin_a=>15, :vitamin_c=>2, :vitamin_b12=>0}
  },
  {
    name: "Mushrooms", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: { :measure=>"3 medium", :weight=>54, :calories=>12, :protein=>2, :carbohydrate=>2, :total_sugar=>1, :total_dietary_fibre=>0.6, :calcium=>2, :iron=>0.3, :sodium=>2, :potassium=>170, :vitamin_a=>0, :vitamin_c=>1, :vitamin_b12=>0.02}
  },
  {
    name: "Okra", months: ["January", "February", "March", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"100mL", :weight=>100, :calories=>33, :protein=>1.9, :carbohydrate=>7, :total_sugar=>1.5, :total_dietary_fibre=>3.2, :calcium=>8, :iron=>3, :sodium=>7, :potassium=>299, :vitamin_a=>14, :vitamin_c=>38, :vitamin_b12=>0}
  },
  {
    name: "Onions", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 10.3,
      "British Columbia" => 4.7,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 5.8,
      "Ontario" => 43.4,
      "Prince Edward Island" => 0,
      "Quebec" => 35.5,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"60mL", :weight=>41, :calories=>17, :protein=>"tr", :carbohydrate=>4, :total_sugar=>2, :total_dietary_fibre=>0.6, :calcium=>9, :iron=>0.1, :sodium=>1, :potassium=>58, :vitamin_a=>0, :vitamin_c=>3, :vitamin_b12=>0}
  },
  {
    name: "Peppers", months: ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 4.2,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0.1,
      "Ontario" => 65,
      "Prince Edward Island" => 0,
      "Quebec" => 30.5,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"  1/2 ", :weight=>60, :calories=>15, :protein=>1, :carbohydrate=>4, :total_sugar=>2, :total_dietary_fibre=>0.8, :calcium=>4, :iron=>0.3, :sodium=>1, :potassium=>126, :vitamin_a=>93, :vitamin_c=>113, :vitamin_b12=>0}
  },
  {
    name: "Potatoes", months: ["January", "February", "March", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>1, :weight=>173, :calories=>161, :protein=>4, :carbohydrate=>37, :total_sugar=>2, :total_dietary_fibre=>3.8, :calcium=>26, :iron=>1.9, :sodium=>17, :potassium=>926, :vitamin_a=>2, :vitamin_c=>17, :vitamin_b12=>0},
  },
  {
    name: "Pumpkins", months: ["September", "October", "November"],
    provinces: {
      "Alberta" => 3.4,
      "British Columbia" => 21.6,
      "Manitoba" => 0,
      "New Brunswick" => 1.8,
      "Newfoundland and Labrador" => 0.2,
      "Nova Scotia" => 0,
      "Ontario" => 52,
      "Prince Edward Island" => 0,
      "Quebec" => 20,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: { :measure=>"125mL", :weight=>129, :calories=>44, :protein=>1, :carbohydrate=>10, :total_sugar=>4, :total_dietary_fibre=>3.8, :calcium=>34, :iron=>1.8, :sodium=>6, :potassium=>267, :vitamin_a=>1007, :vitamin_c=>5, :vitamin_b12=>0}
  },
  {
    name: "Radishes", months: ["May", "June", "July", "August", "September", "October", "November"],
    provinces: {
      "Alberta" => 6.9,
      "British Columbia" => 3.4,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 14,
      "Prince Edward Island" => 0,
      "Quebec" => 75.5,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"3 medium", :weight=>14, :calories=>2, :protein=>"tr", :carbohydrate=>"tr", :total_sugar=>"tr", :total_dietary_fibre=>0.2, :calcium=>3, :iron=>"tr", :sodium=>5, :potassium=>31, :vitamin_a=>0, :vitamin_c=>2, :vitamin_b12=>0 }
  },
  {
    name: "Shallots", months: [],
    provinces: {
      "Alberta" => 21.5,
      "British Columbia" => 22.4,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0.6,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 55.2,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure =>"1 medium", :weight =>15, :energy=>5, :protein=>"tr", :carbohydrate=>1, :total_sugar=>"tr", :total_dietary_fibre=>0.4, :calcium=>11, :iron=>0.2, :sodium=>2, :potassium=>41, :vitamin_a=>8, :vitamin_c=>3, :vitamin_b12=>0}
  },
  {
    name: "Spinach", months: ["May", "June", "July", "August", "September", "October"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 61.5,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0.6,
      "Ontario" => 37,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: { :measure=>"250mL", :weight=>32, :calories=>7, :protein=>1, :carbohydrate=>1, :total_sugar=>"tr", :total_dietary_fibre=>0.7, :calcium=>31, :iron=>0.9, :sodium=>25, :potassium=>177, :vitamin_a=>149, :vitamin_c=>9, :vitamin_b12=>0}
  },
  {
    name: "Squash", months: ["January", "February", "March", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 15.1,
      "Manitoba" => 2.7,
      "New Brunswick" => 1.5,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0.8,
      "Ontario" => 57.8,
      "Prince Edward Island" => 0,
      "Quebec" => 21.7,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"125mL", :weight=>108, :calories=>43, :protein=>1, :carbohydrate=>11, :total_sugar=>2, :total_dietary_fibre=>1.8, :calcium=>44, :iron=>0.6, :sodium=>4, :potassium=>308, :vitamin_a=>413, :vitamin_c=>16, :vitamin_b12=>0}
  },
  {
    name: "Sweet Potatoes", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0 
    }, context: "vegetable",
     nutrition: { measure: 1, weight: 133, calories: 114, protein: "tr", carbohydrate: 1, total_suger: 0,total_dietary_fibre: 0, calcium: 0, sodium:0 , potassium:0 }
  },
  {
    name: "Zucchini", months: ["July", "August", "September", "October"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 15.1,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 57.8,
      "Prince Edward Island" => 0,
      "Quebec" => 21.7,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>4, :weight=>40, :calories=>6, :protein=>"tr", :carbohydrate=>1, :total_sugar=>1, :total_dietary_fibre=>0.4, :calcium=>6, :iron=>0.1, :sodium=>4, :potassium=>104, :vitamin_a=>4, :vitamin_c=>7, :vitamin_b12=>0}
  },
  {
    name: "Carrots", months: ["January", "February", "March", "April", "May", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 5.7,
      "Manitoba" => 0,
      "New Brunswick" => 0.2,
      "Newfoundland and Labrador" => 0.2,
      "Nova Scotia" => 9.3,
      "Ontario" => 46.7,
      "Prince Edward Island" => 5.5,
      "Quebec" => 31,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"1 medium", :weight=>61, :calories=>25, :protein=>1, :carbohydrate=>6, :total_sugar=>3, :total_dietary_fibre=>1.5, :calcium=>20, :iron=>0.2, :sodium=>42, :potassium=>195, :vitamin_a=>367, :vitamin_c=>4, :vitamin_b12=>0}
  },
  {
    name: "Beans", months: ["June", "July", "August", "September", "October"],
    provinces: {
      "Alberta" => 0.9,
      "British Columbia" => 9.3,
      "Manitoba" => 0,
      "New Brunswick" => 0.4,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0.4,
      "Ontario" => 50.3,
      "Prince Edward Island" => 0,
      "Quebec" => 38.4,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {measure: 12.1, weight: 100, calories: 41, protein: 2.6, carbohydrate: 8, total_suger: 0.3, total_dietary_fibre: 1.9, calcium: 1, sodium: 1, potassium: 179, :vitamin_a=>0, :vitamin_c=>0, :vitamin_b12=>0}
  },
  {
    name: "Corn", months: ["July", "August", "September", "October"],
    provinces: {
      "Alberta" => 8.2,
      "British Columbia" => 4.4,
      "Manitoba" => 0.4,
      "New Brunswick" => 0.2,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0.2,
      "Ontario" => 54,
      "Prince Edward Island" => 0,
      "Quebec" => 32.2,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"125mL", :weight=>87, :calories=>82, :protein=>3, :carbohydrate=>19, :total_sugar=>3, :total_dietary_fibre=>2, :calcium=>2, :iron=>0.5, :sodium=>8, :potassium=>209, :vitamin_a=>7, :vitamin_c=>4, :vitamin_b12=>0}
  },
  {
    name: "Garlic", months: [],
    provinces: {
      "Alberta" => 1.8,
      "British Columbia" => 29.0,
      "Manitoba" => 0.4,
      "New Brunswick" => 0.1,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 67,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0.9 
    }, context: "vegetable",
    nutrition: {}
  },
  {
    name: "Tomatoes", months: ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0.8,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 95.7,
      "Prince Edward Island" => 0,
      "Quebec" => 3.34,
      "Saskatchewan" => 0 
    }, 
    context: "vegetable",
    nutrition: { :measure=>"1", :weight=>123, :energy=>22, :protein=>1, :carbohydrate=>5, :total_sugar=>3, :total_dietary_fibre=>1.5, :calcium=>12, :iron=>0.3, :sodium=>6, :potassium=>292, :vitamin_a=>52, :vitamin_c=>16, :vitamin_b12 =>0}
  },
  {
    name: "Peas", months: [],
    provinces: {
      "Alberta" => 8.7,
      "British Columbia" => 5.3,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 53,
      "Prince Edward Island" => 0,
      "Quebec" => 32.1,
      "Saskatchewan" => 0 
    }, 
    context: "vegetable",
    nutrition: { :measure=>"125mL", :weight=>85, :energy=>66, :protein=>4, :carbohydrate=>12, :total_sugar=>4, :total_dietary_fibre=>3.7, :calcium=>20, :iron=>1.3, :sodium=>61, :potassium=>93, :vitamin_a=>89, :vitamin_c=>8, :vitamin_b12=>0}
  },
  {
    name: "Leeks", months: [],
    provinces: {
      "Alberta" => 8.7,
      "British Columbia" => 41.2,
      "Manitoba" => 0,
      "New Brunswick" => 0.1,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 1.1,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 57.5,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"125mL", :weight=>55, :energy=>17, :protein=>"tr", :carbohydrate=>4, :total_sugar=>nil, :total_dietary_fibre=>0.5, :calcium=>16, :iron=>0.6, :sodium=>5, :potassium=>48, :vitamin_a=>1, :vitamin_c=>2, :vitamin_b12=>0}
  },
  {
    name: "Parsnips", months: [],
    provinces: {
      "Alberta" => 8.7,
      "British Columbia" => 9.2,
      "Manitoba" => 7,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 55,
      "Prince Edward Island" => 0,
      "Quebec" => 28.6,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"125mL", :weight=>82, :energy=>59, :protein=>1, :carbohydrate=>14,:total_sugar=>4, :total_dietary_fibre=>2.7, :calcium=>30, :iron=>0.5, :sodium=>8, :potassium=>302, :vitamin_a=>0, :vitamin_c=>11, :vitamin_b12=>0}
  },
  {
    name: "Turnips", months: [],
    provinces: {
      "Alberta" => 8.7,
      "British Columbia" => 10.7,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 2.6,
      "Nova Scotia" => 0,
      "Ontario" => 44,
      "Prince Edward Island" => 12.2,
      "Quebec" => 29.8,
      "Saskatchewan" => 0 
    }, context: "vegetable",
    nutrition: {:measure=>"125mL", :weigh=>90, :energy=>35, :protein=>1, :carbohydrate=>8, :total_sugar=>5, :total_dietary_fibre=>1.6, :calcium=>43, :iron=>0.5, :sodium=>18, :potassium=>293, :vitamin_a=>13, :vitamin_c=>17, :vitamin_b12=>0}
  },
  {
    name: "Apples", months: ["August", "September", "October", "November"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 26.7,
      "Manitoba" => 0,
      "New Brunswick" => 0.8,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 8.7,
      "Ontario" => 35.5,
       "Prince Edward Island" => 0,
       "Quebec" => 27.9,
       "Saskatchewan" => 0
    },
       context: "fruit",
       nutrition: {measure: 1, weight: 138, calories: 72, protein: "tr", carbohydrate: 19, total_suger: 14,total_dietary_fibre: 2.6, calcium: 8, sodium: 1, potassium: 148,  :vitamin_a=>4, :vitamin_c=>6, :vitamin_b12=>0}
  },
  {
    name: "Apricots", months: ["July", "August"],
    provinces: {"Alberta" => 0, "British Columbia" => 92.4, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 7.7, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>3, :weight=>105, :calories=>50, :protein=>1, :carbohydrate=>12, :total_sugar=>10, :total_dietary_fibre=>2.1, :calcium=>14, :iron=>0.4, :sodium=>1, :potassium=>272, :vitamin_a=>101, :vitamin_c=>11, :vitamin_b12=>0 }
  },
  {
    name: "Bananas", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0 
    }, 
    context: "fruit",
    nutrition: {:measure=>1, :weight=>118, :calories=>105, :protein=>1, :carbohydrate=>27, :total_sugar=>14, :total_dietary_fibre=>2.1, :calcium=>6, :iron=>0.3, :sodium=>1, :potassium=>422, :vitamin_a=>4, :vitamin_c=>10, :vitamin_b12=>0 }
  },
  {
    name: "Blueberries", months: ["July", "August", "September"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 40.1,
      "Manitoba" => 0,
      "New Brunswick" => 16.2,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 17.6,
      "Ontario" => 0.6,
      "Prince Edward Island" => 5.3,
      "Quebec" => 19.7,
      "Saskatchewan" => 0
    }, 
    context: "fruit",
    nutrition: {:weight=>77, :calories=>44, :protein=>1, :carbohydrate=>11, :total_sugar=>8, :total_dietary_fibre=>2, :calcium=>5, :iron=>0.2, :sodium=>1, :potassium=>59, :vitamin_a=>2, :vitamin_c=>7, :vitamin_b12=>0 }
  },
  {
    name: "Cantaloupe", months: ["June", "July", "August", "September"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 3.3,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 61.5,
      "Prince Edward Island" => 0,
      "Quebec" => 35.1,
      "Saskatchewan" => 0
    }, context: "fruit",
    nutrition: {:measure=>"125mL", :weight=>85, :calories=>29, :protein=>1, :carbohydrate=>7, :total_sugar=>7, :total_dietary_fibre=>0.6, :calcium=>8, :iron=>0.2, :sodium=>14, :potassium=>226, :vitamin_a=>143, :vitamin_c=>31, :vitamin_b12=>0}
  },
  {
    name: "Cherries", months: ["June", "July"],
    provinces: {"Alberta" => 0, "British Columbia" => 74.6, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 24.6, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0.2}, 
      context: "fruit",
      nutrition: {:measure=>"60mL", :weight=>31, :calories=>95, :protein=>"tr", :carbohydrate=>25, :total_sugar=>20, :total_dietary_fibre=>1.8, :calcium=>3, :iron=>0.2, :sodium=>1, :potassium=>12, :vitamin_a=>0, :vitamin_c=>"tr", :vitamin_b12=>0 }

  },
  {
    name: "Cranberries", months: ["October"],
    provinces: {"Alberta" => 0, "British Columbia" => 27, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0.2, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 68.3, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>"60mL", :weight=>31, :calories=>95, :protein=>"tr", :carbohydrate=>25, :total_sugar=>20, :total_dietary_fibre=>1.8, :calcium=>3, :iron=>0.2, :sodium=>1, :potassium=>12, :vitamin_a=>0, :vitamin_c=>"tr", :vitamin_b12=>0}
  },
  {
    name: "Grapefruit", months: ["January", "February", "March", "April", "May", "June"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>"  1/2 ", :weight=>123, :calories=>52, :protein=>1, :carbohydrate=>13, :total_sugar=>8, :total_dietary_fibre=>2, :calcium=>27, :iron=>0.1, :sodium=>0, :potassium=>166, :vitamin_a=>71, :vitamin_c=>38, :vitamin_b12=>0 }
  },
  {
    name: "Grapes", months: ["August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 32.4, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 63.4, "Prince Edward Island" => 0, "Quebec" => 2.2, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: { :measure=>20, :weight=>100, :calories=>69, :protein=>1, :carbohydrate=>18, :total_sugar=>15, :total_dietary_fibre=>1.2, :calcium=>10, :iron=>0.4, :sodium=>2, :potassium=>191, :vitamin_a=>3, :vitamin_c=>11, :vitamin_b12=>0 }
  },
  {
    name: "Kiwi", months: ["January", "February", "March", "April", "May", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, context: "fruit",
      nutrition: {:measure=>1, :weight=>76, :calories=>46, :protein=>1, :carbohydrate=>11, :total_sugar=>7, :total_dietary_fibre=>2.3, :calcium=>26, :iron=>0.2, :sodium=>2, :potassium=>237, :vitamin_a=>3, :vitamin_c=>69, :vitamin_b12=>0 }
  },
  {
    name: "Lemons", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, context: "fruit", nutrition: {  measure: "", weight: 0, calories: 0, protein: 0, carbohydrate: 0, total_suger: 0,total_dietary_fibre: 0, calcium: 0, sodium: 0, potassium: 0}
  },
  {
    name: "Mangoes", months: ["May", "June", "July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, context: "fruit",
      nutrition:  { measure: 0.5, weight: 104, calories: 67, protein: 1, carbohydrate: 18, total_sugar: 15, total_dietary_fibre: 1.9, calcium: 10, sodium: 2, potassium: 161}
  },
  {
    name: "Nectarines", months: ["August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 31.5, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 68.4, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>1, :weight=>136, :calories=>60, :protein=>1, :carbohydrate=>14, :total_sugar=>11, :total_dietary_fibre=>2.3, :calcium=>8, :iron=>0.4, :sodium=>0, :potassium=>273, :vitamin_a=>18, :vitamin_c=>7, :vitamin_b12=>0}
  },
  {
    name: "Oranges", months: ["January", "February", "March", "April", "May", "June", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>1, :weight=>131, :calories=>62, :protein=>1, :carbohydrate=>15, :total_sugar=>12, :total_dietary_fibre=>2.3, :calcium=>52, :iron=>0.1, :sodium=>0, :potassium=>237, :vitamin_a=>8, :vitamin_c=>70, :vitamin_b12=>0}
  },
  {
    name: "Papayas", months: ["June", "July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, context: "fruit", 
      nutrition: { :measure=>"125mL", :weight=>74, :calories=>29, :protein=>"tr", :carbohydrate=>7, :total_sugar=>4, :total_dietary_fibre=>1.3, :calcium=>18, :iron=>0.1, :sodium=>2, :potassium=>190, :vitamin_a=>17, :vitamin_c=>46, :vitamin_b12=>0}
  },
  {
    name: "Peaches", months: ["July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 27.2, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0.7, 
      "Ontario" => 72, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>1, :weight=>98, :calories=>38, :protein=>1, :carbohydrate=>9, :total_sugar=>8, :total_dietary_fibre=>1.9, :calcium=>6, :iron=>0.2, :sodium=>0, :potassium=>186, :vitamin_a=>16, :vitamin_c=>6, :vitamin_b12=>0}
  },
  {
    name: "Pears", months: ["August", "September", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 3.3, 
      "Ontario" => 35.3, "Prince Edward Island" => 0, "Quebec" => 1.2, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>1, :weight=>166, :calories=>96, :protein=>1, :carbohydrate=>26, :total_sugar=>16, :total_dietary_fibre=>5, :calcium=>15, :iron=>0.3, :sodium=>2, :potassium=>198, :vitamin_a=>2, :vitamin_c=>7, :vitamin_b12=>0}
  },
  {
    name: "Pineapple", months: ["March", "April", "May", "June", "July"],
    provinces: {"Alberta" => 0, "British Columbia" => 59, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>" 125mL", :weight=>82, :calories=>42, :protein=>"tr", :carbohydrate=>11, :total_sugar=>8, :total_dietary_fibre=>1.1, :calcium=>11, :iron=>0.2, :sodium=>1, :potassium=>88, :vitamin_a=>2, :vitamin_c=>46, :vitamin_b12=>0}
  },
  {
    name: "Plums", months: ["July", "August", "September", "October"],
    provinces: {"Alberta" => 0, "British Columbia" => 48, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0.7, 
      "Ontario" => 49.2, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>1, :weight=>66, :calories=>30, :protein=>"tr", :carbohydrate=>8, :total_sugar=>7, :total_dietary_fibre=>1.1, :calcium=>4, :iron=>0.1, :sodium=>0, :potassium=>104, :vitamin_a=>11, :vitamin_c=>6, :vitamin_b12=>0}
  },
  {
    name: "Pomegranates", months: ["January", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>"  1/2 ", :weight=>77, :calories=>53, :protein=>1, :carbohydrate=>13, :total_sugar=>13, :total_dietary_fibre=>0.5, :calcium=>2, :iron=>0.2, :sodium=>2, :potassium=>200, :vitamin_a=>2, :vitamin_c=>5, :vitamin_b12=>0}
  },
  {
    name: "Raspberries", months: ["July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 84.9, "Manitoba" => 0.1, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 4.7, "Prince Edward Island" => 0, "Quebec" => 8.4, "Saskatchewan" => 01}, 
      context: "fruit",
      nutrition: {:measure=>"125mL", :weight=>65, :calories=>34, :protein=>1, :carbohydrate=>8, :total_sugar=>3, :total_dietary_fibre=>4.2, :calcium=>16, :iron=>0.4, :sodium=>1, :potassium=>98, :vitamin_a=>1, :vitamin_c=>17, :vitamin_b12=>0}
  },
  {
    name: "Rhubarb", months: ["January", "February", "March", "April", "May", "June"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 99.4,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0
    }, context: "fruit",
    nutrition: {:measure=>"125mL", :weight=>127, :calories=>147, :protein=>"tr", :carbohydrate=>40, :total_sugar=>36, :total_dietary_fibre=>2.5, :calcium=>184, :iron=>0.3, :sodium=>1, :potassium=>122, :vitamin_a=>5, :vitamin_c=>4, :vitamin_b12=>0}
  },
  {
    name: "Strawberries", months: ["June", "July"],
    provinces: {"Alberta" => 0, "British Columbia" => 7.7, "Manitoba" => 1.6, 
      "New Brunswick" => 2.3, "Newfoundland and Labrador" => 0.3, "Nova Scotia" => 10, 
      "Ontario" => 26.1, "Prince Edward Island" => 0.8, "Quebec" => 50.1, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>7, :weight=>84, :calories=>27, :protein=>1, :carbohydrate=>6, :total_sugar=>4, :total_dietary_fibre=>1.9, :calcium=>13, :iron=>0.4, :sodium=>1, :potassium=>129, :vitamin_a=>1, :vitamin_c=>49, :vitamin_b12=>0}
  },
  {
    name: "Tangerines", months: ["January", "February", "March", "April", "May"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {:measure=>1, :weight=>84, :calories=>45, :protein=>1, :carbohydrate=>11, :total_sugar=>9, :total_dietary_fibre=>1.5, :calcium=>31, :iron=>0.1, :sodium=>2, :potassium=>139, :vitamin_a=>11, :vitamin_c=>22, :vitamin_b12=>0}
  },
  {
    name: "Watermelon", months: ["July", "August", "September"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 1,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 95.5,
      "Prince Edward Island" => 0,
      "Quebec" => 3.3,
      "Saskatchewan" => 0
    }, 
    context: "fruit",
    nutrition: {:measure=>"125mL", :weight=>80, :calories=>24, :protein=>"tr", :carbohydrate=>6, :total_sugar=>5, :total_dietary_fibre=>0.3, :calcium=>6, :iron=>0.2, :sodium=>1, :potassium=>90, :vitamin_a=>22, :vitamin_c=>7, :vitamin_b12=>0 }
  },
  {
    name: "Saskatoon berries", months: ["July"],
    provinces: {"Alberta" => 45.6, "British Columbia" => 0, "Manitoba" => 5.5, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 39.6}, context: "fruit", 
      nutrition: { :measure=>"", :weight=>0, :calories=>0, :protein=>"tr", :carbohydrate=>0, :total_sugar=>0, :total_dietary_fibre=>0, :calcium=>0, :iron=>0, :sodium=>0, :potassium=>0, :vitamin_a=>0, :vitamin_c=>0, :vitamin_b12=>0 }
  },
  {
    name: "Salmon", 
    months: ["July", "August", "September"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 74.6,
      "Manitoba" => 0,
      "New Brunswick" => 18,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 6.5,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0
      },
    context: "seafood", 
    nutrition: {
      :measure=>"75g",
      :weight=>75,
      :calories=>113,
      :protein=>17,
      :carbohydrate=>1,
      :total_fat=>4,
      :saturated_fat=>nil,
      :cholesterol=>nil,
      :calcium=>45,
      :iron=>1.4,
      :sodium=>nil,
      :potassium=>nil,
      :vitamin_a=>72,
      :vitamin_d=>nil,
      :vitamin_b12=>nil,
      :vitamin_e=>nil
    }
  },
  {
    name: "Steelhead", 
    months: ["February", "March", "April",],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 100,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0
      },
    context: "seafood", 
    nutrition: {
      :measure=>"75g",
      :weight=>75,
      :calories=>127,
      :protein=>18,
      :carbohydrate=>0,
      :total_fat=>5,
      :saturated_fat=>1.6,
      :cholesterol=>51,
      :calcium=>65,
      :iron=>0.2,
      :sodium=>32,
      :potassium=>331,
      :vitamin_a=>65,
      :vitamin_d=>4.8,
      :vitamin_b12=>3.73,
      :vitamin_e=>0
    }
  },
  {
    name: "Trout", 
    months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 0.9,
      "Manitoba" => 24.1,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 3.0,
      "Nova Scotia" => 0,
      "Ontario" => 53.1,
      "Prince Edward Island" => 0,
      "Quebec" => 18.7,
      "Saskatchewan" => 0
      },
    context: "seafood", 
    nutrition: {
      :measure=>"75g",
      :weight=>75,
      :calories=>127,
      :protein=>18,
      :carbohydrate=>0,
      :total_fat=>5,
      :saturated_fat=>1.6,
      :cholesterol=>51,
      :calcium=>65,
      :iron=>0.2,
      :sodium=>32,
      :potassium=>331,
      :vitamin_a=>65,
      :vitamin_d=>4.8,
      :vitamin_b12=>3.73,
      :vitamin_e=>0
    }
  },
  {
    name: "Clams", 
    months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 87.3,
      "Manitoba" => 0,
      "New Brunswick" => 0,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 12.6,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 0,
      "Saskatchewan" => 0
      },
    context: "seafood", 
    nutrition: {
      :measure=>"5 large",
      :weight=>60,
      :calories=>89,
      :protein=>15,
      :carbohydrate=>3,
      :total_fat=>1,
      :saturated_fat=>0.1,
      :cholesterol=>40,
      :calcium=>55,
      :iron=>16.8,
      :sodium=>67,
      :potassium=>377,
      :vitamin_a=>103,
      :vitamin_d=>0.1,
      :vitamin_b12=>59.33,
      :vitamin_e=>0.4
    }
  },
  {
    name: "Mussels", 
    months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 1,
      "Manitoba" => 0,
      "New Brunswick" => 0.1,
      "Newfoundland and Labrador" => 14.9,
      "Nova Scotia" => 3.6,
      "Ontario" => 0,
      "Prince Edward Island" => 78.7,
      "Quebec" => 1.5,
      "Saskatchewan" => 0
      },
    context: "seafood", 
    nutrition: {
      :measure=>"15 small",
      :weight=>75,
      :calories=>129,
      :protein=>18,
      :carbohydrate=>6,
      :total_fat=>3,
      :saturated_fat=>0.6,
      :cholesterol=>42,
      :calcium=>25,
      :iron=>5,
      :sodium=>277,
      :potassium=>201,
      :vitamin_a=>68,
      :vitamin_d=>0.2,
      :vitamin_b12=>18,
      :vitamin_e=>0.8
    }
  },
  {
    name: "Oysters", 
    months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 58.8,
      "Manitoba" => 0,
      "New Brunswick" => 7.7,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 3.7,
      "Ontario" => 0,
      "Prince Edward Island" => 29.5,
      "Quebec" => 0,
      "Saskatchewan" => 0
      },
    context: "seafood", 
    nutrition: {
      :measure=>"6 medium",
      :weight=>84,
      :calories=>50,
      :protein=>4,
      :carbohydrate=>5,
      :total_fat=>1,
      :saturated_fat=>0.4,
      :cholesterol=>21,
      :calcium=>37,
      :iron=>4.9,
      :sodium=>150,
      :potassium=>104,
      :vitamin_a=>7,
      :vitamin_d=>nil,
      :vitamin_b12=>13.61,
      :vitamin_e=>0.5
    }
  },
  {
    name: "Scallops", 
    months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {
      "Alberta" => 0,
      "British Columbia" => 85,
      "Manitoba" => 0,
      "New Brunswick" => 4.6,
      "Newfoundland and Labrador" => 0,
      "Nova Scotia" => 0,
      "Ontario" => 0,
      "Prince Edward Island" => 0,
      "Quebec" => 10.2,
      "Saskatchewan" => 0
      },
    context: "seafood", 
    nutrition: {
      :measure=>"6 medium",
      :weight=>78,
      :calories=>87,
      :protein=>18,
      :carbohydrate=>0,
      :total_fat=>1,
      :saturated_fat=>0.1,
      :cholesterol=>41,
      :calcium=>90,
      :iron=>2.3,
      :sodium=>207,
      :potassium=>371,
      :vitamin_a=>23,
      :vitamin_d=>0,
      :vitamin_b12=>1.01,
      :vitamin_e=>1.2
    }
  }
]
end
