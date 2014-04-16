Workforce::Application.routes.draw do
  root "homes#show"

  resources :profiles

  resources :departments

  resources :office_branches

  resources :users,
    controller: 'users',
    only: ['create', 'index', 'show', 'edit', 'update']
end
