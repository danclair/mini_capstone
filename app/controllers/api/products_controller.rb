class Api::ProductsController < ApplicationController
  def all_products_action
    @all_products = Product.all
    render "all_products.json.jb"
  end

  def one_hoodie_action
    @one_hoodie = Product.find_by(id: 1)
    render "one_hoodie.json.jb"
  end

  def one_socks_action
    @one_socks = Product.find_by(id: 2)
    render "one_socks.json.jb"
  end

  def one_pants_action
    @one_pants = Product.find_by(id: 3)
    render "one_pants.json.jb"
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
end
