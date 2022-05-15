class ApplicationController < ActionController::Base
  include Errors
  include ErrorHandlers

  before_action :authenticate_user!

  def after_sign_up_path_for(resource)
    root_path
  end
end
