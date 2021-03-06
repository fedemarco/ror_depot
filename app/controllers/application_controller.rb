class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :show_time
  
  private
  
    def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end
  
  def show_time
    @time = Time.now.to_formatted_s(:short)
  end
  
end
