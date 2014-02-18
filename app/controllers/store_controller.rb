class StoreController < ApplicationController
  def index
    @products = Product.order(popularity: :desc)
    @counter = session[:counter]
    @counter.nil? ? @counter = 1 : @counter+=1
    session[:counter] = @counter
  end
end
