class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    token = auth_hash['credentials']['token']
    @user = User.find_by_uid_and_email(auth_hash["uid"],auth_hash["info"]["email"])
    if @user.blank?
      @user = User.create(:name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"], :uid => auth_hash["uid"] )
    end
    session[:user_id], session[:token] = auth_hash["uid"], token
    redirect_to deals_path
  end

  def destroy
    session[:user_id] = nil
    render :text => "You, have logged out."
  end

  def failure
    render :text => "Sorry, but you did not have access to our app."
  end
end
