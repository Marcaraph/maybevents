Rails.application.routes.draw do
  get 'avatars/create'
  devise_for :users
  root to: "events#index"

  resources :events do
    resources :pictures, only: [:create]
  end
  
  resources :users do
    resources :avatars, only: [:create]
  end
  resources :attendances, only: [:new, :create, :destroy, :index]
  

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
