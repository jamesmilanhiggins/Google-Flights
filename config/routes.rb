Rails.application.routes.draw do

mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


 devise_for :users, controllers: {
   sessions: 'users/sessions'
 }


  root to: "home#index"

  resources :users do
    resources :user_flights
  end
  resources :flights
  resources :home

end
