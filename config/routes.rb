Rails.application.routes.draw do

  devise_for :users
  root 'events#index'

  get 'events/admin' => 'events#admin'

  get 'eats/admin' => 'eats#admin'

  get 'covers/admin' => 'covers#admin'

  get 'curries/admin' => 'curries#admin'

  resources :events

  resources :eats

  resources :covers

  resources :curries



end
