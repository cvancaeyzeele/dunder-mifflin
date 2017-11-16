Rails.application.routes.draw do
  get 'home/index'

  get 'pages/contact', to: 'pages#contact', as: 'contact'

  get 'pages/about', to: 'pages#about', as: 'about'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
  root to: "home#index"
end
