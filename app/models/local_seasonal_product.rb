class LocalSeasonalProduct < ActiveRecord::Base
  belongs_to :month
  belongs_to :product
  belongs_to :province

  def self.for_province(province:, month:)
    where(province: province, month: month)
  end
end
