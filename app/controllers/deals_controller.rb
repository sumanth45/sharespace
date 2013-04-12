class DealsController < ApplicationController

  def index
    @deals = current_user.deals
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
