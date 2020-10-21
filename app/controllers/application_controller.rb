class ApplicationController < ActionController::Base
  before_action :load_current_user

  def load_current_user
    @current_user = User.find_by id: session[:user_id]
  end
end
