class PagesController < ApplicationController
  
  def index

    @listings = Listing.all

  end

  def page_not_found
  end

  def view
    @listings = Listing.all
  end


end
