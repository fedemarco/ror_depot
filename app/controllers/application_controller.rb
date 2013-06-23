class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :show_time
  
  def show_time
    @time = Time.now.to_formatted_s(:short)
  end
end
