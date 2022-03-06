Rails.application.routes.draw do
  
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users
  
  resources :lessons
  resources :teachers
  resources :students
  resources :event_statuses

  get "/month/", to: "lessons#month"
  get "/week/", to: "lessons#week"
  get "/reminder/:id", to: "lessons#remind", as: "reminder"

  get '/admin', to: "pages#admin", as: "admin"
  get '/export', to: "pages#export", as: "export"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
end
