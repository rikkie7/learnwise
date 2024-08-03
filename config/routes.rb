Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :courses do
    resources :sessions
    resources :reviews
    resources :bookings
  end

end
