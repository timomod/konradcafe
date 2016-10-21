Rails.application.routes.draw do

  root 'events#index'


  get 'events/admin' => 'events#admin'

  get 'eats/admin' => 'eats#admin'

  get 'covers/admin' => 'covers#admin'



  resources :events

  resources :eats

  resources :covers



end
