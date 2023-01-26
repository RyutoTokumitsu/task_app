Rails.application.routes.draw do
  get "posts", to: "posts#index"
  get "posts/edit", to: "postd#edit"
  get "posts/show", to: "postd#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts
end
