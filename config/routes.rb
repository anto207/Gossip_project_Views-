Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/Home', to: 'pages#home'
  get '/Home/create_user', to: 'pages#create_user'
  get '/Home/login', to: 'pages#login'
  get '/welcome/:first_name', to: 'pages#first_name'
  get '/gossip/:id', to: 'pages#show_gossip'
  get '/user/:id', to: 'pages#show_user'
  get "/gossips", to: "gossips#index"
  get "/gossips/:id", to: "gossips#show"
  post "/gossips", to: "gossips#create"  # reçoit de l'info d'un formulaire donc verbe POST
  put "/gossips/:id", to: "gossips#update" # reçoit de l'info d'un formulaire donc verbe PUT
  delete "/gossips/:id", to: "gossips#destroy" # une requête un peu spéciale pour supprimer donc verbe DELETE
end