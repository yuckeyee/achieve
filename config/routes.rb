Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :blogs, only: [:index, :new, :create, :edit, :update ,:destroy] do
    collection do
      post :confirm
    end
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

end
