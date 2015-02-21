class ChangeTypeToContext < ActiveRecord::Migration
  def change
    rename_column :products, :type, :context
  end
end
