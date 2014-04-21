Workforce::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#show"

  resources :departments

  resources :office_branches

  resources :users,
    controller: 'users',
    only: ['create', 'index', 'update']

  resources :users, only: :nothing do
    resource :contact_information, only: [:edit, :update, :show]
    resources :salaries, only: [:show, :new, :create, :index]
    resource :profile
    resources :behavior_reports, only: [:new, :create, :index]
    resources :performance_reviews, only: [:new, :create, :index]
  end

  resources :behavior_reports, only: [:edit, :update, :destroy]

  resources :performance_reviews, only: [:show, :edit, :update, :destroy] do
    resources :topics, only: [:new, :create, :index]
  end
  
  resources :topics, only: [:edit, :update, :destroy]

end
