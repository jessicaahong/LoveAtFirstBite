class SearchController < ApplicationController
	before_action :require_login
# Listing.where(city: "San Francisco", produce_category: nil)
	def index
		search_term = {}
		search_term[:city] = params[:Cities] unless params[:Cities].empty?
		search_term[:produce_category] = params[:Category] unless params[:Category].empty?
		@listings = Listing.where(search_term)
		@cities = Listing.uniq.pluck(:city)
		@produce_categories = Listing.uniq.pluck(:produce_category)
		render layout: "search_listings"
	end

# 	def show
# 		@results = Listing.where(city: :option_city, produce_category: :option_category)
# 		render layout: "search_listings"
# 	end

# 	def searchresults
# 		@results = Listing.where(city: :option_city, produce_category: :option_category)
# 		render layout: "search_listings"
# 	end

# private
# 	def query_params
# 		params.require(:listings).permit(:option_city, :option_category)
# 	end
end
