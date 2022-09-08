Rails.application.routes.draw do
  root to: 'main#home'
  get 'main/home'
  get 'main/test'
  get 'main/check'
  get 'main/calculate'
  post 'main/check'
  post 'main/test'
  post 'main/calculate'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
