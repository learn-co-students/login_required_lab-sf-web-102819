Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#new" #show the user a login form
  post "/login", to: "sessions#create" #posting the data to the server will save the username to the db and add to session
  post "/logout", to: "sessions#destroy"
  get "/secret", to: "secrets#show"
  get "/hello", to: "application#hello"
end
