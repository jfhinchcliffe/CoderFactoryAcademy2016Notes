class AddPictureToGift < ActiveRecord::Migration[5.0]
  def change
    add_column :gifts, :picture, :string
  end
end
