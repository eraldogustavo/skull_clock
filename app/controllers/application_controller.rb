class ApplicationController < ActionController::Base
  before_action  :authenticate_user!
  
  def index

  end

  def after_sign_in_path_for(_resource)
    "/clocks"
  end
end
