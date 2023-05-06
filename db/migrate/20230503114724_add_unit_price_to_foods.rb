class AddUnitPriceToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :unit_prit_price, :integer
  end
end
