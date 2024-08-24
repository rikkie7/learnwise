Rails.application.routes.draw do
  resources :meetings
  devise_for :users
  root to: "pages#home"

  get 'dashboard', to: 'pages#dashboard'
  get "courses/category", to: "courses#category"
  get "courses/:category/index", to: "courses#index", as: :courses_category_index
  get "/mycalendar", to: "calendar#mycalendar", as: :my_calendar

  resources :courses, except: [:index] do
    get 'calendar', to: 'calendar#index', as: :calendar
    resources :orders, only: [:show, :create] do
      resources :payments, only: :new
    end
    resources :sessions
    resources :reviews, only: [:index, :show, :new, :create, :destroy]
    resources :bookings, except: [:destroy]
    resources :chatrooms, only: [:new, :create] do
    end
  end

  scope :users do
    get 'sessions/:id/details', to: 'sessions#details', as: :details_session
  end

  # delete 'bookings/:id', to: 'bookings#destroy', as: 'cancel_booking'
  resources :bookings, only: [:destroy]

  # Adding the calendar route without changing the root
  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end

end
