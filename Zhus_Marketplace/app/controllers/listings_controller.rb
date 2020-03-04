class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :set_brands_and_categories, only: [:new, :edit]
  before_action :authenticate_user!



  
  def index
    @listing = Listing.all
  end

  def show
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
      @listing = Listing.create(listing_params)
        
      if @listing.errors.any?
        set_brands_and_categories
          render "new"
      else
          redirect_to root_path
      end

  end

  def edit
  end

  def update
      if @listing.update(listing_params)
          redirect_to @listing
      else
          render 'edit'
      end
  end

  def destroy
      @listing.destroy
      redirect_to listings_path
  end

  def set_listing
    id = params[:id]
    @listing = Listing.find(id)
  end

  def set_brands_and_categories
    @brands = Brand.all
    @categories = Listing.categories.keys
end

  private

  def listing_params
      params.require(:listing).permit(:name, :description, :price, :color, :size, :brand_id, :category, :picture)
  end


end
