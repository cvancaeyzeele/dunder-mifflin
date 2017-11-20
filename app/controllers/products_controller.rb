class ProductsController < ApplicationController
  def show_all
    @products = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end

  def category_show
    @category_name = params[:name].capitalize

    @products = Category.where("lower(name) = ?", params[:name].downcase).first.products
  end
end
