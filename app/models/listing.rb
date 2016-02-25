class Listing < ActiveRecord::Base
	belongs_to :user

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing_listing_avatar.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	def self.produce_categories
		[:Apples,
		 :Artichokes,
		 :Asparagus,
		 :Avocados,
		 :Bananas,
		 :Beets,
		 :Berries,
		 "Broccoli/Cauliflower",
		 "Brussel Sprouts",
		 :Carrots,
		 :Celery,
		 :Cherries,
		 :Chilis,
		 "Citrus Fruits",
		 :Corn,
		 :Cucumber,
		 :Dates,
		 :Eggplant,
		 :Gourds,
		 :Grapes,
		 "Leafy Greens",
		 :Lettuce,
		 :Melons,
		 :Mushrooms,
		 :Onions,
		 "Other Fruits",
		 "Other Vegetables",
		 :Pears,
		 :Peppers,
		 :Potatoes,
		 "Seasonal Vegetables",
		 :Sprouts,
		 "Stone Fruits",
		 :Strawberries,
		 :Tomatoes,
		 "Tropical Fruits",
		 :Zucchini]
	end
end


		# <% @cities.each do |city| %>
		# 	<%= city %>
		# <% end %>

