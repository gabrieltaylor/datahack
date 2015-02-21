class Province < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :local_seasonal_products
  has_many :products, through: :local_seasonal_products
  has_many :months, through: :local_seasonal_products

  def as_json(options = nil)
    {
      id: id,
      name: name
    }
  end
end
