class AddPriceAndNameToGift < ActiveRecord::Migration[5.0]
  def change
    add_column :gifts, :price, :decimal
    add_column :gifts, :name, :string
  end
end
