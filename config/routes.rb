Rails.application.routes.draw do
  get 'home/index' to: 'home#index', as: 'jerseys'
  get 'about/about'
  get 'contact/contact'
  get 'show/show/:id', to: 'show#show', as: 'jersey', id: /\d+/

  root to: 'jersey#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
