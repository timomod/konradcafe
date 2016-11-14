Rails.application.routes.draw do







 as :user do
   get 'registrations/:id/edit' => 'registrations#edit', :as => :edit_user_profile
 end






  devise_for :users,
           :controllers  => {
             :registrations => 'registrations',

           }



  # get 'admins/:id/edit' => 'admins#edit', :as => :edit_admin


  root 'events#index'

  get 'admin/index' => 'admin#index'
  get 'admin/dashboard' => 'admin#dashboard'

  # get 'events/list' => 'events#list'

  get 'events/admin' => 'events#admin'

  get 'eats/admin' => 'eats#admin'

  get 'covers/index' => 'covers#index'
  # get 'covers/:id' => 'covers#show'


  get 'curries/admin' => 'curries#admin'

  resources :events

  resources :eats

  resources :covers

  resources :curries

  resources :admin







end
