Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :ideas
  root 'ideas#index'
end
