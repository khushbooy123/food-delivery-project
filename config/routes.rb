Rails.application.routes.draw do
  resources :shops
  get 'owner/index'
  get 'customer/index'
  # get 'user/index'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  root "user#index"
end
