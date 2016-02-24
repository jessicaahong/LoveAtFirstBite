class AddAvatarToListing < ActiveRecord::Migration
  def up
    add_attachment :listings, :avatar
  end

  def down
    remove_attachment :listings, :avatar
  end
end
