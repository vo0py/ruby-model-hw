Rails.application.routes.draw do
  resources :lessons
  resources :groups
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "api/students", to: "students#index" # as: :students
  get "api/students/:id", to: "students#show" # as: :student
  post "api/students", to: "students#create" # as: :create_student
  patch "api/students/:id", to: "students#update" # as: :update_student
  delete "api/students/:id", to: "students#destroy" # as: :destroy_student

  get "api/groups" => "groups#index" # as: :groups
  get "api/groups/:id" => "groups#show" # as: :group
  post "api/groups/:id" => "groups#create" # as: :create_group
  patch "api/groups/:id" => "groups#update" # as: :update_group
  delete "api/groups/:id" => "groups#destroy" # as: :destroy_group

  get "api/lessons" => "lessons#index" # as: :lessons
  get "api/lessons/:id" => "lessons#show" # as: :lesson
  post "api/lessons/:id" => "lessons#create" # as: :create_lesson
  patch "api/lessons/:id" => "lessons#update" # as: :update_lesson
  delete "api/lessons/:id" => "lessons#destroy" # as: :destroy_lesson

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
