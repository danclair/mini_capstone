Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#all_products_action"
    get "/one_hoodie" => "products#one_hoodie_action"
    get "/one_sock" => "products#one_sock_action"
    get "/one_pants" => "products#one_pants_action"
  end
end
