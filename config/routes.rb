Rails.application.routes.draw do
  get 'todos', to: 'todos#index'

  get 'todos/new', to: 'todos#new'
  post 'todos', to: 'todos#create'

  get 'todos/:id', to: 'todos#show'

  get 'todos/:id/edit', to: 'todos#edit'
  patch 'todos/:id', to: 'todos#update'
end
