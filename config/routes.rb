Workforce::Application.routes.draw do
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
    resources :behavior_reports, only: [:new, :create, :index]
    resources :performance_reviews, only: [:new, :create, :index]
  end

  resources :salaries, only: [:edit, :update, :destroy]

  resources :behavior_reports, only: [:edit, :update, :destroy]

  resource :search, only: [:show]

  resources :performance_reviews, only: [:show, :edit, :update, :destroy] do
    resources :topics, only: [:new, :create, :index]
  end

  resources :topics, only: [:edit, :update, :destroy]

  resource :job_title_users, only: [:create]

  resources :job_titles

  resource :invite, only: [:create]

  resource :admin_dashboard, only: [:show]

end
