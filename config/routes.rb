Rails.application.routes.draw do
  root :to => "static_pages#index"

  match '/rsvp', to: 'rsvps#new', as: :new_rsvp, via: :get
  post '/rsvp', to: 'rsvps#create', as: :rsvps
end
