class AddPurchaseToCommercialUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :commercial_units, :purchase, :boolean, :default => true
  end
end
