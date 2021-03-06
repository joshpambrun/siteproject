Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'pages#home', as: 'home'
  
  get 'signup', to: 'user#signup', as: 'signup'
  
  post 'signup', to: 'user#signup', as: 'signup_submit'
  
  post 'login', to: 'user#login', as: 'login'
  
  post 'logout', to: 'user#logout', as: 'logout'
  
  get 'about', to: 'pages#about', as: 'about'
  
  get 'contact', to: 'pages#contact', as: 'contact'
  
  get 'product/:id', to: 'products#show', as: 'product'
  
  get 'category/:name', to: 'categories#show', as: 'category'
  
  get 'search', to: 'pages#search', as: 'search'
  
  get 'category/:name/search', to: 'categories#search', as: 'category_search'
  
  get 'user', to: 'user#show', as: 'user'
  
  get 'checkout', to: 'user#checkout', as: 'checkout'
  
  post 'checkout/create_order', to: 'user#create_order', as: 'create_order'
  
  post 'change_address', to: 'user#change_address', as: 'change_address'
  
  get 'wishlistproduct/add', to: 'wishlistproduct#add', as: 'cart_add'
  
  get 'wishlistproduct/del', to: 'wishlistproduct#del', as: 'cart_del'
end
