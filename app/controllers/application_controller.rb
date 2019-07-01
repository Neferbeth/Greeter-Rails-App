class ApplicationController < ActionController::Base

  def welcome
    render :index
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

end
