Rails.application.routes.draw do

mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


 devise_for :users, controllers: {
   sessions: 'users/sessions'
 }
  get "userflights" => "user_flights#index"
  post "save_flight" => "user_flights#save_flight"

  root to: "home#index"

  resources :users do
    resources :user_flights do
    end
  end

  get "about-james" => "james#index"
  get "the-calculations" => "about#index"

  resources :flights
  resources :home
  resources :james
  resources :about

end
