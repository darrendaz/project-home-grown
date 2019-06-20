Rails.application.routes.draw do
  root "application#index"
  
  resources :gardens
  resources :users
  resources :users, only: [:index, :show] do
    resources :gardens, only: [:index, :show]
  end
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions', gardens: 'users/gardens' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end