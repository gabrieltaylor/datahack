class Product < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :local_seasonal_products
  has_many :months, through: :local_seasonal_products
  has_many :provinces, through: :local_seasonal_products

  def self.fruits
    where(context: "fruit")
  end

  def self.vegetables
    where(context: "vegetable")
  end

  def as_json(options = nil)
    {
      id: id,
      name: name
    }
  end
end
