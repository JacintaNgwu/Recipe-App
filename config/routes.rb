Rails.application.routes.draw do
  devise_for :users
  # root "foods#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    root to: 'devise/sessions#new'
  end
  resources :users, only: [:index, :show]


  resources :recipes, only: [:index, :show, :new, :create, :update, :destroy] do
   resources :recipe_foods, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :public_recipes, only: [:index]
  resources :shopping_list, only: [:index]
end
