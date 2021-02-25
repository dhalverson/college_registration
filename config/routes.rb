Rails.application.routes.draw do
  root 'welcome#index'

  resources :students, only: [:new, :create]
  resources :courses, only: [:index]
end
