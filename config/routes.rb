Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'dashboard', to: 'dashboard#index'
  get 'apperence', to: 'aperence#index'
  root "dashboard#index"
  
  get ':id', to: 'dashboard#show', as: :user
  
end
