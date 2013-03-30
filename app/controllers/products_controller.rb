class ProductsController < ApplicationController

  # GET products
  def index
    @products = Product.all
  end

  # GET products/1
  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  # GET product/new
  def new
    @product = Product.new
  end

  # POST products
  def create
    @product = Product.new(params[:product])
      if @product.save
        redirect_to @product, :notice => "Product successfully created!"
        # redirect_to product_path => "Product successfully created!"
      else
        render :action => :new
      end
  end

  # GET products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # PUT product/1
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product, :notice => "Product updated!"
    else
      render action: :edit
      # or, render :action => edit
    end
  end

  # DELETE product/1
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    if @product.save
      redirect_to products_path, :notice => "Product deleted!"
    else
      render action: :index
    end
  end

end
