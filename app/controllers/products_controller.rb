class ProductsController < ApplicationController
  def index
      @products = Product.all
  end
  def show
      @product = Product.find(params[:id])
  end
  def new
      @product = Product.new

  end

  def edit
      @product = Product.find(params[:id])
  end

  def update
      @product = Product.find(params[:id])

        if @product.update(product_params)
           redirect_to admin_products_path
        else
           render :edit
    end
  end

  def create
    @product = Product.new(product_params)
  end

end
