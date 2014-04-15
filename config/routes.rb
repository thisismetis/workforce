Workforce::Application.routes.draw do
  root "homes#show"

  resources :profiles
end
