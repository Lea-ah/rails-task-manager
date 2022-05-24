Rails.application.routes.draw do
  # verb 'path', to: 'controller#action', as: 'prefix'
  # See all tasks:
  get 'tasks', to: 'tasks#index'

  # Create a task
  # 1. GET the TASK creation form
  get 'tasks/new', to: 'tasks#new', as: 'task_new'
  # 2. POST the parameters to create a new task
  post 'tasks', to: 'tasks#create', as: 'task_create'

  # Update:
  get 'tasks/:id/edit', to: 'tasks#edit'

  # See a specific task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
end
