class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :category
      t.string :title
      t.string :quantity
      t.text :description
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.boolean :prefers_phone
      t.boolean :prefers_email

      t.timestamps null: false
    end
  end
end
