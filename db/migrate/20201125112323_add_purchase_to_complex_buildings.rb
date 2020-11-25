class AddPurchaseToComplexBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :complex_buildings, :purchase, :boolean, :default => true
  end
end
