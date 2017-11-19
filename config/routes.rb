Rails.application.routes.draw do
  get 'home/index' 
  get 'about/about'
  get 'contact/contact'
  get 'show/show/:id', to: 'show#show', as: 'jersey', id: /\d+/
  get 'search/search', to: 'search#search'
  get 'pages/contact', to: 'pages#contact', as:'contact'
  get 'pages/about', to: 'pages#about', as:'about'
  root to: 'jersey#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
