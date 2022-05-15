class ApplicationController < ActionController::Base
  include Errors
  include ErrorHandlers

  before_action :authenticate_user!
end
