class HomeController < ApplicationController
  def index
    # show only featured products on home page
    @products = Product.where(:featured => true)
  end
end
