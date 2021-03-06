Rails.application.routes.draw do
  resources :events do
    resources :reservations, only: [:new, :create,:index] do
      collection do
        post :new, path: :new, as: :new, action: :back
        post :confirm
        get :confirm
        get :complete
      end
    end
  end
  
  resources :reservations, only: [:index,:show,:destroy] do
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root "homes#index"
  get 'homes/index'


  resources :messages ,only: [:new, :create,:index] do
    collection do
      post :new, path: :new, as: :new, action: :back
      post :confirm
      get :confirm
      get :complete
    end
  end


end
