Rails.application.routes.draw do
  get 'products/show_all'

  get 'products/show'

  get 'home/index'

  get 'pages/contact', to: 'pages#contact', as: 'contact'

  get 'pages/about', to: 'pages#about', as: 'about'

  get '/products', to: 'products#show_all', as: 'show_all'

  get 'products/:id', to: 'products#show', as: 'product', id: /\d+/

  get 'products/:name', to: 'products#category_show', as: 'category_products'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
  root to: "home#index"
end
