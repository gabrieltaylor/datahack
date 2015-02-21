class Province < ActiveRecord::Base
  has_many :local_seasonal_products
  has_many :products, through: :local_seasonal_products
  has_many :months, through: :local_seasonal_products
end
