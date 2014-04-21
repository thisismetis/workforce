Workforce::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#show"

  resources :departments

  resources :office_branches

  resources :users,
    controller: 'users',
    only: ['show', 'create', 'index', 'edit', 'update', 'destroy']

  resources :users, only: :nothing do
    resource :contact_information, only: [:edit, :update, :show]
    resources :salaries, only: [:show, :new, :create, :index]
    resource :profile
  end

end
