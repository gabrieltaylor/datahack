class LocalSeasonalProduct < ActiveRecord::Base
  belongs_to :month
  belongs_to :product
  belongs_to :province
end
