Rails.application.routes.draw do
  devise_for :users
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    root to: 'devise/sessions#new'
  end
  resources :users, only: [:index, :show]
  resources :recipes, only: [:index, :show, :new, :create, :destroy]
end
