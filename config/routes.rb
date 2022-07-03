Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :discussions, only: %i[index show new create edit update destroy] do 
    resources :posts, only: [:create, :show, :edit, :update, :destroy], module: :discussions
  end
  root 'main#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
