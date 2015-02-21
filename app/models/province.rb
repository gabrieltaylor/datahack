class Province
  @@provinces = [ "Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan"]
  def self.find(id:)
    @@provinces[id.to_int]
  end
end
