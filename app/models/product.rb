class Product < ActiveRecord::Base
  has_many :local_seasonal_products
  has_many :months, through: :local_seasonal_products
  has_many :provinces, through: :local_seasonal_products
end
