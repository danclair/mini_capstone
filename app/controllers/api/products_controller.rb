class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    @product.save
    render "show.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.name
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.category = params[:category] || @product.category
    @photo.save
    render "show.json.jb"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product successfully destroyed" }
  end

  # def all_products_action
  #   @all_products = Product.all
  #   render "all_products.json.jb"
  # end

  # def all_product_names_action
  #   @all_products = Product.all
  #   @all_product_names = []
  #   index = 0
  #   while index < @all_products.length
  #     @all_product_names << @all_products[index][:name]
  #     index += 1
  #   end
  #   render "all_product_names.json.jb"
  # end

  # def any_product_action
  #   input_product = params["product_id"]
  #   @any_product = Product.find_by(id: input_product)
  #   render "any_product.json.jb"
  # end
end
