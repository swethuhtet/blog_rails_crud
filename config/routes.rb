Rails.application.routes.draw do
  get 'comments/index'
  root "blogs#index"
  resources :blogs do
    resources :comments
  end
end
