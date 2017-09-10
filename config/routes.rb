Rails.application.routes.draw do

  devise_for :users path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  root to: "projects#index"
  resources :projects
  resources :project_phases
  get 'project_phases/create'

  get 'projects/create'

  resources :tasks, :project_phases, :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
