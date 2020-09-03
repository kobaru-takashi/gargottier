Rails.application.routes.draw do
  resources :events do
    resources :reservations do
    end
  end

  # get 'events/new'
  # get 'events/show'
  # get 'events/edit'
  # get 'events/calendar'
  devise_for :users
  root "homes#index"
  get 'homes/index'

end
