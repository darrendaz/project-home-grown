Rails.application.routes.draw do
  root "application#index"
  
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions', gardens: 'users/gardens' }
  resources :users, only: [:show] do
    resources :gardens, only: [:index, :show]
  end
  resources :gardens, only: [:show] do
    resources :plants, only: [:index, :show]
  end
  resources :gardens
  resources :plants

end