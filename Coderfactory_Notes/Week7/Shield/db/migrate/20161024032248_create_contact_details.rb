class CreateContactDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_details do |t|
      t.string :address
      t.string :phone
      t.string :email
      t.string :twitter
      t.string :facebook
      t.string :url

      t.timestamps
    end
  end
end
