class AddPurchaseToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :purchase, :boolean, :default => true
  end
end
