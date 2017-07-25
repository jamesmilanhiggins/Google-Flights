Rails.application.routes.draw do


 devise_for :users, controllers: {
   sessions: 'users/sessions'
 }


  root to: "flights#index"

  resources :flights
end
