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
  {name: "Artichokes", months: ["August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Asparagus", months: ["May", "June"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Beets", months: ["January", "February", "March", "April", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Brocolli", months: ["June", "July", "August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Brussels Sprouts", months: ["September", "October", "November"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Cabbage", months: ["January", "February", "March", "April", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Cauliflower", months: ["June", "July", "August", "September", "October", "November"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Celery", months: ["July", "August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Cucumbers", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Eggplant", months: ["August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Lettuce", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Mushrooms", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Okra", months: ["January", "February", "March", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Onions", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Peppers", months: ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Potatoes", months: ["January", "February", "March", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Pumpkins", months: ["September", "October", "November"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Radishes", months: ["May", "June", "July", "August", "September", "October", "November"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Spinach", months: ["May", "June", "July", "August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Squash", months: ["January", "February", "March", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Sweet Potatoes", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Zucchini", months: ["July", "August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Carrots", months: ["January", "February", "March", "April", "May", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Beans", months: ["June", "July", "August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Corn", months: ["July", "August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Tomatoes", months: ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: }
]

fruits = [
  {name: "Apples", months: ["August", "September", "October", "November"], measure: 1, weight: 138, calories: 72, protein: "tr", carbohydrate: 19, sugar: 14, fibre: 2.6, calcium: 8, sodium: 1, potassium: 148},
  {name: "Apricots", months: ["July", "August"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Bananas", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Blueberries", months: ["July", "August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Cantaloupe", months: ["June", "July", "August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Cherries", months: ["June", "July"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Cranberries", months: ["October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Grapefruit", months: ["January", "February", "March", "April", "May", "June"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Grapes", months: ["August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Kiwi", months: ["January", "February", "March", "April", "May", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Lemons", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Mangoes", months: ["May", "June", "July", "August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Nectarines", months: ["August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Oranges", months: ["January", "February", "March", "April", "May", "June", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Papayas", months: ["June", "July", "August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Peaches", months: ["July", "August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Pears", months: ["August", "September", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Pineapple", months: ["March", "April", "May", "June", "July"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Plums", months: ["July", "August", "September", "October"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Pomegranates", months: ["January", "October", "November", "December"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Raspberries", months: ["July", "August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Rhubard", months: ["January", "February", "March", "April", "May", "June"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Strawberries", months: ["June", "July"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Tangerines", months: ["January", "February", "March", "April", "May"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: },
  {name: "Watermelon", months: ["July", "August", "September"], measure: , weight: , calories: , protein: , carbohydrate: , sugar: , fibre: , calcium: , sodium: , potassium: }
]

vegetables.each do |veg|
  Product.create(name: veg["name"], context: "vegetable")
end

fruits.each do |fruit|
  Product.create(name: fruit["name"], context: "fruit")
end

provinces = [ "Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan"]

provinces.each do |province|
  Province.create(name: province)
end
