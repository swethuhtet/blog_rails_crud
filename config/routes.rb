Rails.application.routes.draw do
  get 'error/not_found'
  devise_for :users
  
  get 'comments/index'

  root "blogs#index"
  resources :blogs do
    resources :comments
  end
  match "*path", to: "error#not_found", via: :all

end
