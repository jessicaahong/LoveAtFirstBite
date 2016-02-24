class EditCategoryDataTypeInListings < ActiveRecord::Migration
  def change
  	remove_column :listings, :category, :integer
  	add_column :listings, :category, :string
  end
end
