class ProductsController < ApplicationController
  def show_all
    @products = if params[:search_term]
                  search(params[:search_term], 'all')
                else
                  Product.order(:name).page(params[:page]).per(6)
                end
  end

  def show
    @product = Product.find(params[:id])
  end

  def category_show
    @category_name = params[:name].capitalize

    @products = if params[:search_term]
                  search(params[:search_term], 'category')
                else
                  Category.where("lower(name) = ?", params[:name].downcase).first.products.page(params[:page]).per(6)
                end
  end

  def search(term, product_page_type)
    if product_page_type == 'all'
      Product.where('name LIKE ?', "%#{term}%")
    elsif product_page_type == 'category'
      Category.find_by(name: params[:name])
              .products
              .where('name LIKE ?', "%#{term}%")
              .page(params[:page]).per(6)
    end
  end
end
