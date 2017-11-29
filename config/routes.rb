Rails.application.routes.draw do

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'home/index' 
  get 'about/about'
  get 'contact/contact'
  get 'show/show/:id', to: 'show#show', as: 'jersey', id: /\d+/
  get 'search/search', to: 'search#search'
  get 'pages/contact', to: 'pages#contact', as:'contact'
  get 'pages/about', to: 'pages#about', as:'about'
  get 'on_sale/on_sale', to: 'on_sale#on_sale', as:'on_sale'
  get 'limited_edition/limited', to: 'limited#limited', as:'limited'
  get 'clearance/clearance', to: 'clearance#clearance', as:'clearance'
  get 'cart/cart/:id', to: 'cart#cart', as:'cart', id: /\d+/
  resource :cart, only: [:show]
  resource :order_items, only: [:create, :update, :destroy]
  
  resource :sessions
  get "user/new", to: "user#new"
  post "user/new", to: "user#new"
  get 'user/:id', to: 'user#show', id: /\d+/
  get "create", to: "sessions#create"
  get "login", to: "sessions#new"
  get "logout", to: "sessions#destroy"

  root to: 'home#index'
  root to: 'jersey#index'

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create, :destroy]

  resources :users, controller: "clearance/users", only: [:create] do

  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
