# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

months.each do |month|
  Month.create(name: month)
end


vegetables = [
  {
    name: "Artichokes", months: ["August", "September", "October"],
    provinces: = {
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
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
    }, context: "vegetable"
  },
  {
    name: "Apples", months: ["August", "September", "October", "November"],
    provinces: {"Alberta" => 0, "British Columbia" => 26.7, "Manitoba" => 0, 
      "New Brunswick" => 0.8, "Newfoundland and Labrador" => 0, "Nova Scotia" => 8.7, 
      "Ontario" => 35.5, "Prince Edward Island" => 0, "Quebec" => 27.9, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Apricots", months: ["July", "August"],
    provinces: {"Alberta" => 0, "British Columbia" => 92.4, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 7.7, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
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
    }, context: "fruit"
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
      "Saskatchewan" => 0]
    }, context: "fruit"
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
      "Saskatchewan" => 0]
    }, context: "fruit"
  },
  {
    name: "Cherries", months: ["June", "July"],
    provinces: {"Alberta" => 0, "British Columbia" => 74.6, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 24.6, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0.2]}, context: "fruit"

  },
  {
    name: "Cranberries", months: ["October"],
    provinces: {"Alberta" => 0, "British Columbia" => 27, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0.2, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 68.3, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Grapefruit", months: ["January", "February", "March", "April", "May", "June"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Grapes", months: ["August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 32.4, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 63.4, "Prince Edward Island" => 0, "Quebec" => 2.2, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Kiwi", months: ["January", "February", "March", "April", "May", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Lemons", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Mangoes", months: ["May", "June", "July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Nectarines", months: ["August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 31.5, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 68.4, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Oranges", months: ["January", "February", "March", "April", "May", "June", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Papayas", months: ["June", "July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Peaches", months: ["July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 27.2, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0.7, 
      "Ontario" => 72, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Pears", months: ["August", "September", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 3.3, 
      "Ontario" => 35.3, "Prince Edward Island" => 0, "Quebec" => 1.2, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Pineapple", months: ["March", "April", "May", "June", "July"],
    provinces: {"Alberta" => 0, "British Columbia" => 59, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Plums", months: ["July", "August", "September", "October"],
    provinces: {"Alberta" => 0, "British Columbia" => 48, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0.7, 
      "Ontario" => 49.2, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Pomegranates", months: ["January", "October", "November", "December"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Raspberries", months: ["July", "August", "September"],
    provinces: {"Alberta" => 0, "British Columbia" => 84.9, "Manitoba" => 0.1, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 4.7, "Prince Edward Island" => 0, "Quebec" => 8.4, "Saskatchewan" => 01]}, context: "fruit"
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
      "Saskatchewan" => 0]
    }, context: "fruit"
  },
  {
    name: "Strawberries", months: ["June", "July"]
    provinces: {"Alberta" => 0, "British Columbia" => 7.7, "Manitoba" => 1.6, 
      "New Brunswick" => 2.3, "Newfoundland and Labrador" => 0.3, "Nova Scotia" => 10, 
      "Ontario" => 26.1, "Prince Edward Island" => 0.8, "Quebec" => 50.1, "Saskatchewan" => 0]}, context: "fruit"
  },
  {
    name: "Tangerines", months: ["January", "February", "March", "April", "May"],
    provinces: {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}, context: "fruit"
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
      "Saskatchewan" => 0]
    }, context: "fruit"
  },
  {
    name: "Saskatoon berries", months: ["July"],
    provinces: {"Alberta" => 45.6, "British Columbia" => 0, "Manitoba" => 5.5, 
      "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, 
      "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 39.6]}, context: "fruit"
  }
]

vegetables.each do |veg|
  Product.create(name: veg[:name], context: "vegetable")
end

fruits.each do |fruit|
  Product.create(name: fruit[:name], context: "fruit")
end

provinces = [ "Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan"]

provinces: = {"Alberta" => 0, "British Columbia" => 0, "Manitoba" => 0, "New Brunswick" => 0, "Newfoundland and Labrador" => 0, "Nova Scotia" => 0, "Ontario" => 0, "Prince Edward Island" => 0, "Quebec" => 0, "Saskatchewan" => 0]}

provinces.each do |province|
  Province.create(name: province)
end

vegetables.each do |veg|
  v = Product.where(name: veg[:name]).first
  provinces = Province.all
  provinces.each do |province|
    veg[:months].each do |month|
      m = Month.where(name: month).first
      LocalSeasonalProduct.create(month: m, province: province, product: v)
    end
  end
end

fruits.each do |veg|
  v = Product.where(name: veg[:name]).first
  provinces = Province.all
  provinces.each do |province|
    veg[:months].each do |month|
      m = Month.where(name: month).first
      LocalSeasonalProduct.create(month: m, province: province, product: v)
    end
  end
end


