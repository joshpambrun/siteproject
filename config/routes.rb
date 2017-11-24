Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'pages#home', as: 'home'
  
  get 'login', to: 'user#login', as: 'login'
  
  get 'about', to: 'pages#about', as: 'about'
  
  get 'product/:id', to: 'products#show', as: 'product'
  
  get 'category/:name', to: 'categories#show', as: 'category'
  
  get 'search', to: 'pages#search', as: 'search'
  
  get 'category/:name/search', to: 'categories#search', as: 'category_search'
  
  get 'user/cart', to: 'user#cart', as: 'cart'
  
  get 'user/cart/add', to: 'user#add', as: 'cart_add'
  
  get 'user/cart/del', to: 'user#del', as: 'cart_del'
end
