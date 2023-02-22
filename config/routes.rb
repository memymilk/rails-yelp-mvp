Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # delete "restaurants/:id", to: "restaurants#destroy", as: :delete_restaurant
  # patch "restaurants/:id", to: "restaurants#update"

  # #reviews
  # get "reviews", to: "reviews#index"
  # get "reviews/new", to: "reviews#new", as: :new_review
  # post "reviews", to: "reviews#create"
  # get "reviews/:id/edit", to: "reviews#edit", as: :edit_review

  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :reviews, only: [:new, :create]
  end


end
