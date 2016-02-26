class SearchController < ApplicationController
	before_action :require_login
	def index
		search_term = {}
		if params[:Cities].nil? || params[:Category].nil?
			params[:Cities] = ""
			params[:Category] = ""
		end
		search_term[:city] = params[:Cities] unless params[:Cities].empty?
		search_term[:produce_category] = params[:Category] unless params[:Category].empty?
		@listings = Listing.where(search_term)
		@cities = Listing.uniq.pluck(:city)
		@produce_categories = Listing.uniq.pluck(:produce_category)
		render layout: "search_listings"
	end
end
