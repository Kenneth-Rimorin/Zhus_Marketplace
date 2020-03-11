class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :set_brands_and_categories, only: [:new, :edit]
  before_action :set_user_listing, only: [:edit, :update, :destroy, :cart]
  before_action :authenticate_user! 
  skip_before_action :authenticate_user!, :only => [:show]
  before_action :ransack, only: [:edit, :update, :destroy, :cart, :index, :show, :new, :create]


  def cart
  end

  def index
    @listing = Listing.all
  end

  def show
    @listings = Listing.all

    if current_user

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: [{
          name: @listing.name,
          description: @listing.description,
          amount: @listing.price * 100,
          currency: 'aud',
          quantity: 1,
      }],
      payment_intent_data: {
          metadata: {
              user_id: current_user.id,
              listing_id: @listing.id
          }
      },
      success_url: "#{root_url}payments/success?userId=#{current_user.id}&listingId=#{@listing.id}",
      cancel_url: "#{root_url}listings"
  )

  @session_id = session.id
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.create(listing_params)
        
      if @listing.errors.any?
        # set_brands_and_categories
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

  def manage
    
  end

  

  private

  def ransack
    @q = Listing.ransack(params[:q])
    @listings = @q.result.includes(brand: [])
  end

  def set_listing
    id = params[:id]
    @listing = Listing.find(id)
  end

  def set_brands_and_categories
    @brands = Brand.all
    @categories = Listing.categories.keys
  end

  def set_user_listing
    id = params[:id]
    @listing = current_user.listings.find_by_id(id)

    if @listing == nil
        redirect_to listings_path
    end
end

  def listing_params
      params.require(:listing).permit(:name, :description, :price, :color, :size, :brand_id, :category, :picture)
  end


end
