class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :only=>[:profile] 
  

#  def index 
#  end

#  def new
#    @listing = Listing.new
#  end


end
