class FixFoodUnitPriceTypo < ActiveRecord::Migration[7.0]
  def change
    rename_column :foods, :unit_prit_price, :unit_price
  end
end
