Agilezen::Application.routes.draw do

  match "signups/?p=:invitation_token", :to => "signups#new"
  
  resources :signups
  
  get "signups/index"
  get "signups/new"
  get "signups/create"
  get "signups/show"

  root :to => "signups#new"
  
end
