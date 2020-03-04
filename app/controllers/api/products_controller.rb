class Api::ProductsController < ApplicationController
  def all_products_action
    @all_products = Product.all
    render "all_products.json.jb"
  end

  def one_hoodie_action
    @one_hoodie = Product.find_by(id: 1)
    render "one_hoodie.json.jb"
  end

  def one_sock_action
    @one_sock = Product.find_by(id: 2)
    render "one_sock.json.jb"
  end

  def one_pants_action
    @one_pants = Product.find_by(id: 3)
    render "one_pants.json.jb"
  end
end
