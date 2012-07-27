class PagesController < InheritedResources::Base
authorize_resource :only => [:index, :show]

  def new_to_this
  end
end
