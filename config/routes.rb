Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#index"
  get "/signup", to: "users#signup"
  get "/notes", to: "notes#index"
  get "/signin", to: "users#signin"
  post "/signin", to: "users#signin"
  post '/signup', to: 'users#signup'
  post '/signout', to: 'users#signout'
end