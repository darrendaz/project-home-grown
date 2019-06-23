Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  resources :users, only: [:show] do
    resources :gardens, only: [:index]
  end

  resources :gardens, only: [:show] do
    resources :plants, only: [:show]
  end

  resources :plants, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
