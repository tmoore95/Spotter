Rails.application.routes.draw do
  get 'check_ins/new'
  get 'check_ins/create'
  get 'spots/index'
  devise_for :skaters
  root to: 'pages#home'
  resources :spots do
    resources :check_ins, only: :create
  end
  resources :skaters
  post "spots/:id", to: "tags#create", as: "new_tag"
end
