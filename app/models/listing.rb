class Listing < ActiveRecord::Base
	belongs_to :user

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing_listing_avatar.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	enum category: [:apple, :avocado, :banana, :cherries, "leafy greens", :orange, :peaches, :pear]


end
