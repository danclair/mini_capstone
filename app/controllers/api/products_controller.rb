class Api::ProductsController < ApplicationController
  def all_products_action
    @all_products = Product.all
    render "all_products.json.jb"
  end

  def all_product_names_action
    @all_products = Product.all
    @all_product_names = []
    index = 0
    while index < @all_products.length
      @all_product_names << @all_products[index][:name]
      index += 1
    end
    render "all_product_names.json.jb"
  end

  def any_product_action
    input_product = params["product_id"]
    @any_product = Product.find_by(id: input_product)
    render "any_product.json.jb"
  end
end
