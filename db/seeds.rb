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
  {name: "Artichokes", months: ["August", "September", "October"]},
  {name: "Asparagus", months: ["May", "June"]},
  {name: "Beets", months: ["January", "February", "March", "April", "July", "August", "September", "October", "November", "December"]},
  {name: "Brocolli", months: ["June", "July", "August", "September", "October"]},
  {name: "Brussels Sprouts", months: ["September", "October", "November"]},
  {name: "Cabbage", months: ["January", "February", "March", "April", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Cauliflower", months: ["June", "July", "August", "September", "October", "November"]},
  {name: "Celery", months: ["July", "August", "September", "October"]},
  {name: "Cucumbers", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Eggplant", months: ["August", "September", "October"]},
  {name: "Lettuce", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Mushrooms", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Okra", months: ["January", "February", "March", "December"]},
  {name: "Onions", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Peppers", months: ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Potatoes", months: ["January", "February", "March", "July", "August", "September", "October", "November", "December"]},
  {name: "Pumpkins", months: ["September", "October", "November"]},
  {name: "Radishes", months: ["May", "June", "July", "August", "September", "October", "November"]},
  {name: "Spinach", months: ["May", "June", "July", "August", "September", "October"]},
  {name: "Squash", months: ["January", "February", "March", "August", "September", "October", "November", "December"]},
  {name: "Sweet Potatoes", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Zucchini", months: ["July", "August", "September", "October"]},
  {name: "Carrots", months: ["January", "February", "March", "April", "May", "July", "August", "September", "October", "November", "December"]},
  {name: "Beans", months: ["June", "July", "August", "September", "October"]},
  {name: "Corn", months: ["July", "August", "September", "October"]},
  {name: "Tomatoes", months: ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
]

fruits = [
  {name: "Apples", months: ["August", "September", "October", "November"]},
  {name: "Apricots", months: ["July", "August"]},
  {name: "Bananas", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Blueberries", months: ["July", "August", "September"]},
  {name: "Cantaloupe", months: ["June", "July", "August", "September"]},
  {name: "Cherries", months: ["June", "July"]},
  {name: "Cranberries", months: ["October"]},
  {name: "Grapefruit", months: ["January", "February", "March", "April", "May", "June"]},
  {name: "Grapes", months: ["August", "September"]},
  {name: "Kiwi", months: ["January", "February", "March", "April", "May", "October", "November", "December"]},
  {name: "Lemons", months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]},
  {name: "Mangoes", months: ["May", "June", "July", "August", "September"]},
  {name: "Nectarines", months: ["August", "September"]},
  {name: "Oranges", months: ["January", "February", "March", "April", "May", "June", "November", "December"]},
  {name: "Papayas", months: ["June", "July", "August", "September"]},
  {name: "Peaches", months: ["July", "August", "September"]},
  {name: "Pears", months: ["August", "September", "October", "November", "December"]},
  {name: "Pineapple", months: ["March", "April", "May", "June", "July"]},
  {name: "Plums", months: ["July", "August", "September", "October"]},
  {name: "Pomegranates", months: ["January", "October", "November", "December"]},
  {name: "Raspberries", months: ["July", "August", "September"]},
  {name: "Rhubard", months: ["January", "February", "March", "April", "May", "June"]},
  {name: "Strawberries", months: ["June", "July"]},
  {name: "Tangerines", months: ["January", "February", "March", "April", "May"]},
  {name: "Watermelon", months: ["July", "August", "September"]}
]

vegetables.each do |veg|
  Product.create(name: veg[:name], context: "vegetable")
end

fruits.each do |fruit|
  Product.create(name: fruit[:name], context: "fruit")
end

provinces = [ "Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan"]

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
