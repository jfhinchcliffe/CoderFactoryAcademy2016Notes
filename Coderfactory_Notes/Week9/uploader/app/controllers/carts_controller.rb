class CartsController < ApplicationController

def add_to_cart
  @gift = Gift.find(params[:gift])
  session[:cart] = [] unless session[:cart]
  session[:cart] << @gift.id
  session[:total] = get_session_price(session[:cart])
  flash[:message] = "#{@gift.name} added to cart"
  redirect_to @gift
end

def empty_cart
  reset_session
  flash[:message] = "Cart emptied"
  redirect_to gifts_path
end

def get_session_price(array_of_products)
  total = 0.00
  array_of_products.each do |prod|
    x = Gift.find(prod)
    total += x.price.to_i
  end
  total * 10
end

end
