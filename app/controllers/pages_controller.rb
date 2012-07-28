class PagesController < InheritedResources::Base
authorize_resource :only => [:index]

  def new_to_this
  end
  
  def how_it_works
  end
  
  def team
  end
  
  def privacy_policy
  end
  
  def terms_and_conditions
  end
end
