class EditUserIdForListings < ActiveRecord::Migration
  def change
  	remove_column :listings, :user_id, :integer
  	add_reference :listings, :user, index: true
  end
end
