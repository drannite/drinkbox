Rails.application.routes.draw do
  resources :ingredients
  resources :drinks

  # # ++ Users
  devise_for :users
  devise_scope :user do
    # by default send authenticated users to the home page
    authenticated :user do
      root to: 'drinks#index'
    end
    # signout route
    get '/users/sign_out' => 'devise/sessions#destroy'
    # when not logged in, send user to the sign up page
    unauthenticated :user do
      root to: 'devise/registrations#new', as: :unauthenticated_root
    end
  end
end
