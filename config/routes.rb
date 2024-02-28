Rails.application.routes.draw do

  devise_for :users
  root to: "events#index"

  resources :events do
    resources :pictures, only: [:create]
  end
  
  resources :users do
    resources :avatars, only: [:create]
  end

  resources :attendances, only: [:new, :create, :destroy, :index]

  resources :admins
  namespace :admin do
    root to: "admin#index"
    resources :users, :events, :avatars, :pictures, :attendances
  end

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

#                               admin_root GET    /admin(.:format)                                                                                  admin/admin#index
#                              admin_users GET    /admin/users(.:format)                                                                            admin/users#index
#                                          POST   /admin/users(.:format)                                                                            admin/users#create
#                           new_admin_user GET    /admin/users/new(.:format)                                                                        admin/users#new
#                          edit_admin_user GET    /admin/users/:id/edit(.:format)                                                                   admin/users#edit
#                               admin_user GET    /admin/users/:id(.:format)                                                                        admin/users#show
#                                          PATCH  /admin/users/:id(.:format)                                                                        admin/users#update
#                                          PUT    /admin/users/:id(.:format)                                                                        admin/users#update
#                                          DELETE /admin/users/:id(.:format)                                                                        admin/users#destroy
#                             admin_events GET    /admin/events(.:format)                                                                           admin/events#index
#                                          POST   /admin/events(.:format)                                                                           admin/events#create
#                          new_admin_event GET    /admin/events/new(.:format)                                                                       admin/events#new
#                         edit_admin_event GET    /admin/events/:id/edit(.:format)                                                                  admin/events#edit
#                              admin_event GET    /admin/events/:id(.:format)                                                                       admin/events#show
#                                          PATCH  /admin/events/:id(.:format)                                                                       admin/events#update
#                                          PUT    /admin/events/:id(.:format)                                                                       admin/events#update
#                                          DELETE /admin/events/:id(.:format)                                                                       admin/events#destroy
#                            admin_avatars GET    /admin/avatars(.:format)                                                                          admin/avatars#index
#                                          POST   /admin/avatars(.:format)                                                                          admin/avatars#create
#                         new_admin_avatar GET    /admin/avatars/new(.:format)                                                                      admin/avatars#new
#                        edit_admin_avatar GET    /admin/avatars/:id/edit(.:format)                                                                 admin/avatars#edit
#                             admin_avatar GET    /admin/avatars/:id(.:format)                                                                      admin/avatars#show
#                                          PATCH  /admin/avatars/:id(.:format)                                                                      admin/avatars#update
#                                          PUT    /admin/avatars/:id(.:format)                                                                      admin/avatars#update
#                                          DELETE /admin/avatars/:id(.:format)                                                                      admin/avatars#destroy
#                           admin_pictures GET    /admin/pictures(.:format)                                                                         admin/pictures#index
#                                          POST   /admin/pictures(.:format)                                                                         admin/pictures#create
#                        new_admin_picture GET    /admin/pictures/new(.:format)                                                                     admin/pictures#new
#                       edit_admin_picture GET    /admin/pictures/:id/edit(.:format)                                                                admin/pictures#edit
#                            admin_picture GET    /admin/pictures/:id(.:format)                                                                     admin/pictures#show
#                                          PATCH  /admin/pictures/:id(.:format)                                                                     admin/pictures#update
#                                          PUT    /admin/pictures/:id(.:format)                                                                     admin/pictures#update
#                                          DELETE /admin/pictures/:id(.:format)                                                                     admin/pictures#destroy
#                        admin_attendances GET    /admin/attendances(.:format)                                                                      admin/attendances#index
#                                          POST   /admin/attendances(.:format)                                                                      admin/attendances#create
#                     new_admin_attendance GET    /admin/attendances/new(.:format)                                                                  admin/attendances#new
#                    edit_admin_attendance GET    /admin/attendances/:id/edit(.:format)                                                             admin/attendances#edit
#                         admin_attendance GET    /admin/attendances/:id(.:format)                                                                  admin/attendances#show
#                                          PATCH  /admin/attendances/:id(.:format)                                                                  admin/attendances#update
#                                          PUT    /admin/attendances/:id(.:format)                                                                  admin/attendances#update
#                                          DELETE /admin/attendances/:id(.:format)  
