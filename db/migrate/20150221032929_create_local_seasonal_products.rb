class CreateLocalSeasonalProducts < ActiveRecord::Migration
  def change
    create_table :local_seasonal_products do |t|
      t.references :product 
      t.references :province
      t.references :month
      t.timestamps null: false
    end
  end
end
