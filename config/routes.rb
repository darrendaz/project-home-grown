Rails.application.routes.draw do
  root "application#index"
  
  resources :gardens
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions', gardens: 'users/gardens' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end