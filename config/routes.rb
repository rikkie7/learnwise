Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "courses/category", to: "courses#category"
  get "courses/:category/index", to: "courses#index", as: :courses_category_index

  resources :courses, except: [:index] do
    resources :sessions
    resources :reviews, only: [:index, :show, :new, :create, :destroy]
    resources :bookings, except: [:destroy]
  end

  get 'dashboard', to: 'pages#dashboard'

  # delete 'bookings/:id', to: 'bookings#destroy', as: 'cancel_booking'
  resources :bookings, only: [:destroy]

end
