class ListingsController < ApplicationController
before_action :require_login

	def index
		@listings = Listing.all
		render :index
	end

	def mylistings
		@listing = Listing.all
		render :mylistings
	end

	def new
		@listing = Listing.new
		render :new
	end

	def create
		@listing = Listing.create(listing_params)
		redirect_to "/listings/#{@listing.id}"
	end

	def show
		@listing = Listing.find(params[:id])
		render :show
	end

	def edit
		@listing = Listing.find(params[:id])
		if (@current_user == @listing.user)
			render :edit
		else
			redirect_to "/"
			end
	end

	def update
		listing = Listing.find(params[:id])
		listing.update_attributes(listing_params)
		redirect_to listing
	end

	def destroy
		listing = Listing.find(params[:id])
		listing.destroy
		redirect_to "/listings"
	end

# Listing.where(city: "San Francisco", produce_category: nil)
	def search
		@cities = Listing.uniq.pluck(:city)
		@produce_categories = Listing.uniq.pluck(:produce_category)
		@listing = Listing.new
		render layout: "search_listings"
	end

	def searchresults
		@
		@results = Listing.where(city: :option_city, produce_category: :option_category)
		render layout: "search_listings"
	end

private
	def listing_params
		params.require(:listing).permit(:produce_category, :title, :quantity, :description, :address_line1, :address_line2, :city, :state, :zip, :phone, :prefers_phone, :prefers_email, :user_id, :avatar)
	end

	def query_params
		params.require(:listings).permit(:option_city, :option_category)
	end
end
