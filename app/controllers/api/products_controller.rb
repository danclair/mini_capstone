class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < 15")
    end

    # if params[:sort] == "price" && params[:sort_order] == "asc"
    #   @products = @products.order(price: :asc)
    # elsif params[:sort] == "price" && params[:sort_order] == "desc"
    #   @products = @products.order(price: :desc)
    if params[:sort] && params[:sort_order]
      @products = @products.order(params[:sort] => params[:sort_order])
    else
      @products = @products.order(id: :asc)
    end

    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.category = params[:category] || @product.category
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
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
