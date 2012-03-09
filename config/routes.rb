Agilezen::Application.routes.draw do
  
  match "/signups/:invitation_token", :to => "signups#new"
  
  resources :signups
  
  get "signups/index"
  get "signups/new"
  get "signups/create"
  get "signups/thanks"

  root :to => "signups#new"
  
end
