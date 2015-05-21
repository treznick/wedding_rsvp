Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "static_pages#index"

  match '/rsvp', to: 'rsvps#new', as: :new_rsvp, via: :get
  post '/rsvp', to: 'rsvps#create', as: :rsvps
end
