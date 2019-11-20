Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/:id', to: 'todos#show'
  post 'todos', to: 'todos#create'
end
