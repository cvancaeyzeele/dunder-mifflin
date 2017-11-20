class ProductsController < ApplicationController
  def show_all
    @products = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end

  def category_show
    @category_name = params[:name]

    @products = Category.find_by(name: params[:name].downcase).products
  end
end
