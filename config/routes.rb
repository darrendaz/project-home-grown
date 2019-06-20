Rails.application.routes.draw do
  root "application#index"
  
  resources :gardens
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions', gardens: 'users/gardens' }
  resources :users, only: [:show] do
    resources :gardens, only: [:index, :show]
  end

end