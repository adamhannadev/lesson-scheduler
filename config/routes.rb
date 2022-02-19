Rails.application.routes.draw do

  resources :lessons
  resources :teachers
  resources :students
  resources :events

  get "/month/", to: "lessons#month"
  get "/week/", to: "lessons#week"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
