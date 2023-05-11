Rails.application.routes.draw do
  root 'gossips#index'
  get '/gossip/:id', to: 'gossips#show' , as: 'gossip'
  get '/new' , to: 'gossips#new'
  get '/team' , to: 'teams#index'
  get '/contact', to: 'contacts#index'
  resources :gossips
end
