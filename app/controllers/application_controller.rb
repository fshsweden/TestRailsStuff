class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :print_params

  def print_params
    Rails.logger.debug params.inspect
  end

end
