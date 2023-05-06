Rails.application.routes.draw do
  devise_for :users
  # root "foods#index"
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    root to: 'devise/sessions#new'
  end
  resources :users, only: [:index, :show]
  resources :public_recipes, only: [:index]
  resources :recipes, only: [:index, :show, :new, :create, :update, :destroy]
end
