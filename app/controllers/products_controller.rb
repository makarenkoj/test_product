class ProductsController < ApplicationController

  before_action :load_product, except: [:index, :create, :new]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to product_path(@product), notice: 'Product created!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product), notice: 'Product updated!'
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy!

    redirect_to root_url, notice: 'Product deleted!'
  end

  def show
  end

  private
  def load_product
    @product ||= Product.find params[:id]
  end

  def product_params
    params.require(:product).permit(:name, :description)
  end
end
