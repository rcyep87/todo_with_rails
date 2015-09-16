Rails.application.routes.draw do
  get    '/todos',        to: 'taskmanagers#index'
  get    '/todos/:id',    to: 'taskmanagers#show'
  get    '/todos/new',    to: 'taskmanagers#new'
  put    '/todos/:id',    to: 'taskmanagers#update'
  delete '/todos/:id',    to: 'taskmanagers#destroy'
end
