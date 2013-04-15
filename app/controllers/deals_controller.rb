class DealsController < ApplicationController
  layout 'deals'

  def index
    client = FbGraph::User.me(session[:token])
    @friends = client.friends
  end

  def new
    @deal = Deal.new
  end

  def create
    deal = current_user.deals.build params[:deal]
    deal.save!
    redirect_to deals_path    
  end

end
