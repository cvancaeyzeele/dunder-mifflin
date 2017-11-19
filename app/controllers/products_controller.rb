class ProductsController < ApplicationController
  def show_all
    @products = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end
end
