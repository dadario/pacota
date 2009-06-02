class LoginController < ApplicationController
  def index
  end

  def login
    user = User.find_by_login(params[:login])
    if user.nil?
      @error = t(".user_not_found")
      render :action => :index
    elsif user.password != params[:password]
      @error = t(".password_not_found")
      render :action => :index
    else
      flash[:notice] = t(".login_successful")
      redirect_to :home
    end
  end
end
