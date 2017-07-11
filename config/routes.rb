Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :blogs, only: [:index, :new, :create, :edit, :update ,:destroy, :show] do
    resources :comments
    post :confirm, on: :collection
  end
  
  resources :contacts, only: [:new, :create] do
    collection do
      post :confirm
    end
  end
  
  root 'top#index'

if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end

resources :poems, only: [:index, :show]

devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks",
  }

resources :users, only: [:index, :show] do
  member do
      get :following, :followers
  end
end

resources :relationships, only: [:create, :destroy]

resources :conversations do
  resources :messages
end

end