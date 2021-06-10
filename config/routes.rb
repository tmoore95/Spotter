Rails.application.routes.draw do
  get 'check_ins/new'
  get 'check_ins/create'
  get 'spots/index'
  devise_for :skaters do
    member do
      post "toggle_favorite", to: "skaters#toggle_favorite"
    end
  end
  root to: 'pages#home'
  resources :spots do
    resources :check_ins, only: :create
    member do
      post "toggle_favorite", to: "spots#toggle_favorite"
    end
  end
  resources :skaters
  post "spots/:id", to: "tags#create", as: "new_tag"
  get "/feed", to: "pages#feed", as: "feed"
end
