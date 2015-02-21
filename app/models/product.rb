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

  def self.harvested_in(month:)
    all.select { |p| p.months.include?(month) }
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
    nutrition: {"Food name"=>"Artichoke, boiled, drained", "Measure"=>"1 medium", "Weight "=>"120", "Energy"=>"60", "Protein"=>"4", "Carbohydrate"=>"13", "Total Sugar"=>"1", "Total Dietary Fibre"=>"4.7", "Calcium"=>"54", "Iron"=>"1.5", "Sodium"=>"114", "Potassium"=>"425", "Vitamin A"=>"11", "Vitamin C"=>"12", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Asparagus, fresh or frozen, boiled, drained", "Measure"=>"6 spears", "Weight "=>"90", "Energy"=>"18", "Protein"=>"2", "Carbohydrate"=>"3", "Total Sugar"=>"1", "Total Dietary Fibre"=>"1.6", "Calcium"=>"18", "Iron"=>"0.7", "Sodium"=>"8", "Potassium"=>"178", "Vitamin A"=>"41", "Vitamin C"=>"14", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Beets, sliced, boiled, drained", "Measure"=>"125mL", "Weight "=>"90", "Energy"=>"40", "Protein"=>"2", "Carbohydrate"=>"9", "Total Sugar"=>"7", "Total Dietary Fibre"=>"1.8", "Calcium"=>"14", "Iron"=>"0.7", "Sodium"=>"69", "Potassium"=>"274", "Vitamin A"=>"2", "Vitamin C"=>"3", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Broccoli, chopped, raw", "Measure"=>"125mL", "Weight "=>"46", "Energy"=>"16", "Protein"=>"1", "Carbohydrate"=>"3", "Total Sugar"=>"1", "Total Dietary Fibre"=>"1.1", "Calcium"=>"22", "Iron"=>"0.3", "Sodium"=>"15", "Potassium"=>"147", "Vitamin A"=>"15", "Vitamin C"=>"41", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Brussels sprouts, fresh or frozen, boiled, drained", "Measure"=>"4 sprouts", "Weight "=>"84", "Energy"=>"33", "Protein"=>"3", "Carbohydrate"=>"6", "Total Sugar"=>"2", "Total Dietary Fibre"=>"3.2", "Calcium"=>"26", "Iron"=>"0.7", "Sodium"=>"15", "Potassium"=>"255", "Vitamin A"=>"36", "Vitamin C"=>"45", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Cabbage, green, shredded, raw", "Measure"=>"125mL", "Weight "=>"37", "Energy"=>"9", "Protein"=>"1", "Carbohydrate"=>"2", "Total Sugar"=>"1", "Total Dietary Fibre"=>"0.7", "Calcium"=>"17", "Iron"=>"0.2", "Sodium"=>"7", "Potassium"=>"91", "Vitamin A"=>"3", "Vitamin C"=>"12", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Cauliflower, pieces, raw", "Measure"=>"125mL", "Weight "=>"53", "Energy"=>"13", "Protein"=>"1", "Carbohydrate"=>"3", "Total Sugar"=>"1", "Total Dietary Fibre"=>"0.9", "Calcium"=>"12", "Iron"=>"0.2", "Sodium"=>"16", "Potassium"=>"160", "Vitamin A"=>"1", "Vitamin C"=>"25", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Celery, raw", "Measure"=>"1", "Weight "=>"40", "Energy"=>"6", "Protein"=>"tr", "Carbohydrate"=>"1", "Total Sugar"=>"1", "Total Dietary Fibre"=>"0.6", "Calcium"=>"16", "Iron"=>"0.1", "Sodium"=>"32", "Potassium"=>"104", "Vitamin A"=>"9", "Vitamin C"=>"1", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Cucumber, peeled, raw", "Measure"=>"4 slices", "Weight "=>"28", "Energy"=>"3", "Protein"=>"tr", "Carbohydrate"=>"1", "Total Sugar"=>"tr", "Total Dietary Fibre"=>"0.2", "Calcium"=>"4", "Iron"=>"0.1", "Sodium"=>"1", "Potassium"=>"38", "Vitamin A"=>"1", "Vitamin C"=>"1", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Eggplant, pieces, boiled, drained", "Measure"=>"125mL", "Weight "=>"52", "Energy"=>"18", "Protein"=>"tr", "Carbohydrate"=>"5", "Total Sugar"=>"2", "Total Dietary Fibre"=>"1.3", "Calcium"=>"3", "Iron"=>"0.1", "Sodium"=>"1", "Potassium"=>"64", "Vitamin A"=>"1", "Vitamin C"=>"1", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Lettuce, iceberg, shredded", "Measure"=>"250mL", "Weight "=>"58", "Energy"=>"8", "Protein"=>"1", "Carbohydrate"=>"2", "Total Sugar"=>"1", "Total Dietary Fibre"=>"0.7", "Calcium"=>"10", "Iron"=>"0.2", "Sodium"=>"6", "Potassium"=>"82", "Vitamin A"=>"15", "Vitamin C"=>"2", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Mushrooms, raw", "Measure"=>"3 medium", "Weight "=>"54", "Energy"=>"12", "Protein"=>"2", "Carbohydrate"=>"2", "Total Sugar"=>"1", "Total Dietary Fibre"=>"0.6", "Calcium"=>"2", "Iron"=>"0.3", "Sodium"=>"2", "Potassium"=>"170", "Vitamin A"=>"0", "Vitamin C"=>"1", "Vitamin B12"=>"0.02"}
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
    }, context: "vegetable"
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
    nutrition: {"Food name"=>"Onions, yellow, chopped, raw", "Measure"=>"60mL", "Weight "=>"41", "Energy"=>"17", "Protein"=>"tr", "Carbohydrate"=>"4", "Total Sugar"=>"2", "Total Dietary Fibre"=>"0.6", "Calcium"=>"9", "Iron"=>"0.1", "Sodium"=>"1", "Potassium"=>"58", "Vitamin A"=>"0", "Vitamin C"=>"3", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Pepper, sweet, red, raw", "Measure"=>"  1/2 ", "Weight "=>"60", "Energy"=>"15", "Protein"=>"1", "Carbohydrate"=>"4", "Total Sugar"=>"2", "Total Dietary Fibre"=>"0.8", "Calcium"=>"4", "Iron"=>"0.3", "Sodium"=>"1", "Potassium"=>"126", "Vitamin A"=>"93", "Vitamin C"=>"113", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Potato, baked, flesh and skin", "Measure"=>"1", "Weight "=>"173", "Energy"=>"161", "Protein"=>"4", "Carbohydrate"=>"37", "Total Sugar"=>"2", "Total Dietary Fibre"=>"3.8", "Calcium"=>"26", "Iron"=>"1.9", "Sodium"=>"17", "Potassium"=>"926", "Vitamin A"=>"2", "Vitamin C"=>"17", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Pumpkin, canned", "Measure"=>"125mL", "Weight "=>"129", "Energy"=>"44", "Protein"=>"1", "Carbohydrate"=>"10", "Total Sugar"=>"4", "Total Dietary Fibre"=>"3.8", "Calcium"=>"34", "Iron"=>"1.8", "Sodium"=>"6", "Potassium"=>"267", "Vitamin A"=>"1007", "Vitamin C"=>"5", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Radishes", "Measure"=>"3 medium", "Weight "=>"14", "Energy"=>"2", "Protein"=>"tr", "Carbohydrate"=>"tr", "Total Sugar"=>"tr", "Total Dietary Fibre"=>"0.2", "Calcium"=>"3", "Iron"=>"tr", "Sodium"=>"5", "Potassium"=>"31", "Vitamin A"=>"0", "Vitamin C"=>"2", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Onions, green (scallion), raw", "Measure"=>"1 medium", "Weight "=>"15", "Energy"=>"5", "Protein"=>"tr", "Carbohydrate"=>"1", "Total Sugar"=>"tr", "Total Dietary Fibre"=>"0.4", "Calcium"=>"11", "Iron"=>"0.2", "Sodium"=>"2", "Potassium"=>"41", "Vitamin A"=>"8", "Vitamin C"=>"3", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Spinach, chopped, raw", "Measure"=>"250mL", "Weight "=>"32", "Energy"=>"7", "Protein"=>"1", "Carbohydrate"=>"1", "Total Sugar"=>"tr", "Total Dietary Fibre"=>"0.7", "Calcium"=>"31", "Iron"=>"0.9", "Sodium"=>"25", "Potassium"=>"177", "Vitamin A"=>"149", "Vitamin C"=>"9", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Squash, butternut, cubed, baked", "Measure"=>"125mL", "Weight "=>"108", "Energy"=>"43", "Protein"=>"1", "Carbohydrate"=>"11", "Total Sugar"=>"2", "Total Dietary Fibre"=>"1.8", "Calcium"=>"44", "Iron"=>"0.6", "Sodium"=>"4", "Potassium"=>"308", "Vitamin A"=>"413", "Vitamin C"=>"16", "Vitamin B12"=>"0"}
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
    }, context: "vegetable"
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
    nutrition: {"Food name"=>"Zucchini, raw, slices", "Measure"=>"4", "Weight "=>"40", "Energy"=>"6", "Protein"=>"tr", "Carbohydrate"=>"1", "Total Sugar"=>"1", "Total Dietary Fibre"=>"0.4", "Calcium"=>"6", "Iron"=>"0.1", "Sodium"=>"4", "Potassium"=>"104", "Vitamin A"=>"4", "Vitamin C"=>"7", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Carrots, raw", "Measure"=>"1 medium", "Weight "=>"61", "Energy"=>"25", "Protein"=>"1", "Carbohydrate"=>"6", "Total Sugar"=>"3", "Total Dietary Fibre"=>"1.5", "Calcium"=>"20", "Iron"=>"0.2", "Sodium"=>"42", "Potassium"=>"195", "Vitamin A"=>"367", "Vitamin C"=>"4", "Vitamin B12"=>"0"}
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
    }, context: "vegetable"
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
    nutrition: {"Food name"=>"Corn, sweet, on or off cob, fresh or frozen, boiled, drained", "Measure"=>"125mL", "Weight "=>"87", "Energy"=>"82", "Protein"=>"3", "Carbohydrate"=>"19", "Total Sugar"=>"3", "Total Dietary Fibre"=>"2", "Calcium"=>"2", "Iron"=>"0.5", "Sodium"=>"8", "Potassium"=>"209", "Vitamin A"=>"7", "Vitamin C"=>"4", "Vitamin B12"=>"0"}
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
    }, context: "vegetable"
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
    }, context: "vegetable",
    nutrition: {"Food name"=>"Tomatoes, raw", "Measure"=>"1", "Weight "=>"123", "Energy"=>"22", "Protein"=>"1", "Carbohydrate"=>"5", "Total Sugar"=>"3", "Total Dietary Fibre"=>"1.5", "Calcium"=>"12", "Iron"=>"0.3", "Sodium"=>"6", "Potassium"=>"292", "Vitamin A"=>"52", "Vitamin C"=>"16", "Vitamin B12"=>"0"}
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
    }, context: "vegetable",
    nutrition: {"Food name"=>"Peas, green, frozen, boiled, drained", "Measure"=>"125mL", "Weight "=>"85", "Energy"=>"66", "Protein"=>"4", "Carbohydrate"=>"12", "Total Sugar"=>"4", "Total Dietary Fibre"=>"3.7", "Calcium"=>"20", "Iron"=>"1.3", "Sodium"=>"61", "Potassium"=>"93", "Vitamin A"=>"89", "Vitamin C"=>"8", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Leeks, chopped, boiled, drained", "Measure"=>"125mL", "Weight "=>"55", "Energy"=>"17", "Protein"=>"tr", "Carbohydrate"=>"4", "Total Sugar"=>nil, "Total Dietary Fibre"=>"0.5", "Calcium"=>"16", "Iron"=>"0.6", "Sodium"=>"5", "Potassium"=>"48", "Vitamin A"=>"1", "Vitamin C"=>"2", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Parsnip, sliced, boiled, drained", "Measure"=>"125mL", "Weight "=>"82", "Energy"=>"59", "Protein"=>"1", "Carbohydrate"=>"14", "Total Sugar"=>"4", "Total Dietary Fibre"=>"2.7", "Calcium"=>"30", "Iron"=>"0.5", "Sodium"=>"8", "Potassium"=>"302", "Vitamin A"=>"0", "Vitamin C"=>"11", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Rutabaga (yellow turnip), diced, boiled, drained", "Measure"=>"125mL", "Weight "=>"90", "Energy"=>"35", "Protein"=>"1", "Carbohydrate"=>"8", "Total Sugar"=>"5", "Total Dietary Fibre"=>"1.6", "Calcium"=>"43", "Iron"=>"0.5", "Sodium"=>"18", "Potassium"=>"293", "Vitamin A"=>"13", "Vitamin C"=>"17", "Vitamin B12"=>"0"}
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
       nutrition: {"Food name"=>"Apple with skin (7cm.diam)", "Measure"=>"1", "Weight "=>"138", "Energy"=>"72", "Protein"=>"tr", "Carbohydrate"=>"19", "Total Sugar"=>"14", "Total Dietary Fibre"=>"2.6", "Calcium"=>"8", "Iron"=>"0.2", "Sodium"=>"1", "Potassium"=>"148", "Vitamin A"=>"4", "Vitamin C"=>"6", "Vitamin B12"=>"0"}
  },
  {
    name: "Apricots", months: ["July", "August"],
    provinces: {"Alberta" => 0, "British Columbia" => 92.4, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 7.7, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Apricots, raw", "Measure"=>"3", "Weight "=>"105", "Energy"=>"50", "Protein"=>"1", "Carbohydrate"=>"12", "Total Sugar"=>"10", "Total Dietary Fibre"=>"2.1", "Calcium"=>"14", "Iron"=>"0.4", "Sodium"=>"1", "Potassium"=>"272", "Vitamin A"=>"101", "Vitamin C"=>"11", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Banana", "Measure"=>"1", "Weight "=>"118", "Energy"=>"105", "Protein"=>"1", "Carbohydrate"=>"27", "Total Sugar"=>"14", "Total Dietary Fibre"=>"2.1", "Calcium"=>"6", "Iron"=>"0.3", "Sodium"=>"1", "Potassium"=>"422", "Vitamin A"=>"4", "Vitamin C"=>"10", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Blueberries, raw", "Measure"=>"125mL", "Weight "=>"77", "Energy"=>"44", "Protein"=>"1", "Carbohydrate"=>"11", "Total Sugar"=>"8", "Total Dietary Fibre"=>"2", "Calcium"=>"5", "Iron"=>"0.2", "Sodium"=>"1", "Potassium"=>"59", "Vitamin A"=>"2", "Vitamin C"=>"7", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Melon, cantaloupe, cubes", "Measure"=>"125mL", "Weight "=>"85", "Energy"=>"29", "Protein"=>"1", "Carbohydrate"=>"7", "Total Sugar"=>"7", "Total Dietary Fibre"=>"0.6", "Calcium"=>"8", "Iron"=>"0.2", "Sodium"=>"14", "Potassium"=>"226", "Vitamin A"=>"143", "Vitamin C"=>"31", "Vitamin B12"=>"0"}
  },
  {
    name: "Cherries", months: ["June", "July"],
    provinces: {"Alberta" => 0, "British Columbia" => 74.6, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 24.6, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0.2}, 
      context: "fruit",
      nutrition: {"Food name"=>"Cherries, sweet", "Measure"=>"10", "Weight "=>"68", "Energy"=>"43", "Protein"=>"1", "Carbohydrate"=>"11", "Total Sugar"=>"9", "Total Dietary Fibre"=>"1.4", "Calcium"=>"9", "Iron"=>"0.2", "Sodium"=>"0", "Potassium"=>"151", "Vitamin A"=>"2", "Vitamin C"=>"5", "Vitamin B12"=>"0"}

  },
  {
    name: "Cranberries", months: ["October"],
    provinces: {"Alberta" => 0, "British Columbia" => 27, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0.2, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 68.3, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Cranberries, dried, sweetened", "Measure"=>"60mL", "Weight "=>"31", "Energy"=>"95", "Protein"=>"tr", "Carbohydrate"=>"25", "Total Sugar"=>"20", "Total Dietary Fibre"=>"1.8", "Calcium"=>"3", "Iron"=>"0.2", "Sodium"=>"1", "Potassium"=>"12", "Vitamin A"=>"0", "Vitamin C"=>"tr", "Vitamin B12"=>"0"}
  },
  {
    name: "Grapefruit", months: ["January", "February", "March", "April", "May", "June"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Grapefruit, pink or red", "Measure"=>"  1/2 ", "Weight "=>"123", "Energy"=>"52", "Protein"=>"1", "Carbohydrate"=>"13", "Total Sugar"=>"8", "Total Dietary Fibre"=>"2", "Calcium"=>"27", "Iron"=>"0.1", "Sodium"=>"0", "Potassium"=>"166", "Vitamin A"=>"71", "Vitamin C"=>"38", "Vitamin B12"=>"0"}
  },
  {
    name: "Grapes", months: ["August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 32.4, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 63.4, "Prince Edward Island" => 0, "Quebec" => 2.2, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Grapes", "Measure"=>"20", "Weight "=>"100", "Energy"=>"69", "Protein"=>"1", "Carbohydrate"=>"18", "Total Sugar"=>"15", "Total Dietary Fibre"=>"1.2", "Calcium"=>"10", "Iron"=>"0.4", "Sodium"=>"2", "Potassium"=>"191", "Vitamin A"=>"3", "Vitamin C"=>"11", "Vitamin B12"=>"0"}
  },
  {
    name: "Kiwi", months: ["January", "February", "March", "April", "May", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, context: "fruit"
  },
  {
    name: "Lemons", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, context: "fruit"
  },
  {
    name: "Mangoes", months: ["May", "June", "July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, context: "fruit"
  },
  {
    name: "Nectarines", months: ["August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 31.5, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 68.4, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Nectarine", "Measure"=>"1", "Weight "=>"136", "Energy"=>"60", "Protein"=>"1", "Carbohydrate"=>"14", "Total Sugar"=>"11", "Total Dietary Fibre"=>"2.3", "Calcium"=>"8", "Iron"=>"0.4", "Sodium"=>"0", "Potassium"=>"273", "Vitamin A"=>"18", "Vitamin C"=>"7", "Vitamin B12"=>"0"}
  },
  {
    name: "Oranges", months: ["January", "February", "March", "April", "May", "June", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Orange", "Measure"=>"1", "Weight "=>"131", "Energy"=>"62", "Protein"=>"1", "Carbohydrate"=>"15", "Total Sugar"=>"12", "Total Dietary Fibre"=>"2.3", "Calcium"=>"52", "Iron"=>"0.1", "Sodium"=>"0", "Potassium"=>"237", "Vitamin A"=>"8", "Vitamin C"=>"70", "Vitamin B12"=>"0"}
  },
  {
    name: "Papayas", months: ["June", "July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, context: "fruit"
  },
  {
    name: "Peaches", months: ["July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 27.2, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0.7, 
      "Ontario" => 72, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Peach", "Measure"=>"1", "Weight "=>"98", "Energy"=>"38", "Protein"=>"1", "Carbohydrate"=>"9", "Total Sugar"=>"8", "Total Dietary Fibre"=>"1.9", "Calcium"=>"6", "Iron"=>"0.2", "Sodium"=>"0", "Potassium"=>"186", "Vitamin A"=>"16", "Vitamin C"=>"6", "Vitamin B12"=>"0"}
  },
  {
    name: "Pears", months: ["August", "September", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 3.3, 
      "Ontario" => 35.3, "Prince Edward Island" => 0, "Quebec" => 1.2, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Pear with skin", "Measure"=>"1", "Weight "=>"166", "Energy"=>"96", "Protein"=>"1", "Carbohydrate"=>"26", "Total Sugar"=>"16", "Total Dietary Fibre"=>"5", "Calcium"=>"15", "Iron"=>"0.3", "Sodium"=>"2", "Potassium"=>"198", "Vitamin A"=>"2", "Vitamin C"=>"7", "Vitamin B12"=>"0"}
  },
  {
    name: "Pineapple", months: ["March", "April", "May", "June", "July"],
    provinces: {"Alberta" => 0, "British Columbia" => 59, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Pineapple, cubes", "Measure"=>" 125mL", "Weight "=>"82", "Energy"=>"42", "Protein"=>"tr", "Carbohydrate"=>"11", "Total Sugar"=>"8", "Total Dietary Fibre"=>"1.1", "Calcium"=>"11", "Iron"=>"0.2", "Sodium"=>"1", "Potassium"=>"88", "Vitamin A"=>"2", "Vitamin C"=>"46", "Vitamin B12"=>"0"}
  },
  {
    name: "Plums", months: ["July", "August", "September", "October"],
    provinces: {"Alberta" => 0, "British Columbia" => 48, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0.7, 
      "Ontario" => 49.2, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Plum", "Measure"=>"1", "Weight "=>"66", "Energy"=>"30", "Protein"=>"tr", "Carbohydrate"=>"8", "Total Sugar"=>"7", "Total Dietary Fibre"=>"1.1", "Calcium"=>"4", "Iron"=>"0.1", "Sodium"=>"0", "Potassium"=>"104", "Vitamin A"=>"11", "Vitamin C"=>"6", "Vitamin B12"=>"0"}
  },
  {
    name: "Pomegranates", months: ["January", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Pomegranate (9.5cm diam)", "Measure"=>"  1/2 ", "Weight "=>"77", "Energy"=>"53", "Protein"=>"1", "Carbohydrate"=>"13", "Total Sugar"=>"13", "Total Dietary Fibre"=>"0.5", "Calcium"=>"2", "Iron"=>"0.2", "Sodium"=>"2", "Potassium"=>"200", "Vitamin A"=>"2", "Vitamin C"=>"5", "Vitamin B12"=>"0"}
  },
  {
    name: "Raspberries", months: ["July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 84.9, "Manitoba" => 0.1, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 4.7, "Prince Edward Island" => 0, "Quebec" => 8.4, "Saskatchewan" => 01}, 
      context: "fruit",
      nutrition: {"Food name"=>"Raspberries", "Measure"=>"125mL", "Weight "=>"65", "Energy"=>"34", "Protein"=>"1", "Carbohydrate"=>"8", "Total Sugar"=>"3", "Total Dietary Fibre"=>"4.2", "Calcium"=>"16", "Iron"=>"0.4", "Sodium"=>"1", "Potassium"=>"98", "Vitamin A"=>"1", "Vitamin C"=>"17", "Vitamin B12"=>"0"}
  },
  {
    name: "Rhubard", months: ["January", "February", "March", "April", "May", "June"],
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
    nutrition: {"Food name"=>"Rhubarb, frozen, cooked, with added sugar", "Measure"=>"125mL", "Weight "=>"127", "Energy"=>"147", "Protein"=>"tr", "Carbohydrate"=>"40", "Total Sugar"=>"36", "Total Dietary Fibre"=>"2.5", "Calcium"=>"184", "Iron"=>"0.3", "Sodium"=>"1", "Potassium"=>"122", "Vitamin A"=>"5", "Vitamin C"=>"4", "Vitamin B12"=>"0"}
  },
  {
    name: "Strawberries", months: ["June", "July"],
    provinces: {"Alberta" => 0, "British Columbia" => 7.7, "Manitoba" => 1.6, 
      "New Brunswick" => 2.3, "Newfoundland and Labrador" => 0.3, "Nova Scotia" => 10, 
      "Ontario" => 26.1, "Prince Edward Island" => 0.8, "Quebec" => 50.1, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Strawberries", "Measure"=>"7", "Weight "=>"84", "Energy"=>"27", "Protein"=>"1", "Carbohydrate"=>"6", "Total Sugar"=>"4", "Total Dietary Fibre"=>"1.9", "Calcium"=>"13", "Iron"=>"0.4", "Sodium"=>"1", "Potassium"=>"129", "Vitamin A"=>"1", "Vitamin C"=>"49", "Vitamin B12"=>"0"}
  },
  {
    name: "Tangerines", months: ["January", "February", "March", "April", "May"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0}, 
      context: "fruit",
      nutrition: {"Food name"=>"Tangerine (mandarin)", "Measure"=>"1", "Weight "=>"84", "Energy"=>"45", "Protein"=>"1", "Carbohydrate"=>"11", "Total Sugar"=>"9", "Total Dietary Fibre"=>"1.5", "Calcium"=>"31", "Iron"=>"0.1", "Sodium"=>"2", "Potassium"=>"139", "Vitamin A"=>"11", "Vitamin C"=>"22", "Vitamin B12"=>"0"}
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
    nutrition: {"Food name"=>"Melon, watermelon, cubes", "Measure"=>"125mL", "Weight "=>"80", "Energy"=>"24", "Protein"=>"tr", "Carbohydrate"=>"6", "Total Sugar"=>"5", "Total Dietary Fibre"=>"0.3", "Calcium"=>"6", "Iron"=>"0.2", "Sodium"=>"1", "Potassium"=>"90", "Vitamin A"=>"22", "Vitamin C"=>"7", "Vitamin B12"=>"0"}
  },
  {
    name: "Saskatoon berries", months: ["July"],
    provinces: {"Alberta" => 45.6, "British Columbia" => 0, "Manitoba" => 5.5, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 39.6}, context: "fruit"
  }
]
end
