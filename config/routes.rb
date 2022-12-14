Rails.application.routes.draw do
  resources :foods
  get '/searchfood', to: 'customer#searchfood'
  get 'customer/view'
  get '/search', to:'foods#search'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :shops
  get 'owner/index'
  get 'customer/index'
  get 'user/index'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
end
