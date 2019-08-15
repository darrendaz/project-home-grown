Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations", :omniauth_callbacks => "callbacks" }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'logout', to: 'devise/sessions#destroy'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  resources :users, only: [:index, :show] do
    resources :gardens, only: [:index, :show, :new, :create, :destroy]
  end

  resources :gardens, only: [:index, :show] do
    resources :plants, only: [:index, :show, :new, :create] do
      resources :comments
    end
  end

  resources :gardens, only: [:edit, :update]
  
  
  resources :plants, only: [:show] do
    resources :comments, only: [:index, :new, :create]
  end
  
  get 'api/gardens', to: 'api#gardens'
  get 'api/plants', to: 'api#plants'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
