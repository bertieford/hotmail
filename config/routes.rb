Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :order_products, only: [:destroy]
  resources :products do
    resources :reviews, only: [:create]
    resources :order_products, only: [:create, :edit, :update]
  end
  # get "products/:id/add_to_basket", to: "orders#add_to_basket", as: :additem
  resources :orders
  # Defines the root path route ("/")
  # root "articles#index"
end
