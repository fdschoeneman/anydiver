Anydiver::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  devise_scope :user do 
    match '/sign_in', to: 'devise/sessions#new', as: :new_user_session
  end
end