Rails.application.routes.draw do
  patch 'links/:id' => 'links#update', as: :links
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'dashboard', to: 'dashboard#index'
  get 'apperence', to: 'aperence#index'
  root "dashboard#index"
  
  get ':id', to: 'dashboard#show', as: :user
  
end
