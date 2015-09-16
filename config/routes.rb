Rails.application.routes.draw do
  get    '/todos',        to: 'taskmanagers#index'
  get    '/todos/new',    to: 'taskmanagers#new'
  get    '/todos/:id',    to: 'taskmanagers#show'
  put    '/todos/:id',    to: 'taskmanagers#update'
  delete '/todos/:id',    to: 'taskmanagers#destroy'
end
