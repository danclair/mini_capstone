Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#all_products_action"
    # get "/one_hoodie" => "products#one_hoodie_action"
    # get "/one_socks" => "products#one_socks_action"
    # get "/one_pants" => "products#one_pants_action"
    get "/all_product_names" => "products#all_product_names_action"
    get "/product_url" => "products#any_product_action"
    get "/product_url/:product_id" => "products#any_product_action"
  end
end
