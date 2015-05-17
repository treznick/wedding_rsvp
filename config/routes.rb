Rails.application.routes.draw do
  root :to => "static_pages#index"

  get 'rsvp' => 'rsvps#new'
  resource :rsvp, only: [:create]
end
