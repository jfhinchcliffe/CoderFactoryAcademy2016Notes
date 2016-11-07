class CreateItemToCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :item_to_carts do |t|
      t.references :item, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
