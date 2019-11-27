Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  resources :planters do
    resources :planted_veggies
  end
end
