Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'list', to: 'tasks#index'
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
  get "tasks/:id", to: "tasks#details", as: :task
end
