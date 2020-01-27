Rails.application.routes.draw do
  resources :ingredients
  resources :drinks

  # ++ Users
  # devise user routes
  devise_for :users, controllers: { session: 'users/sessions', registrations: 'users/registrations' }

  devise_scope :user do
    # by default send suthenticated users to the home page
    authenticated :user do
      root to: 'drinks#index'
    end

    # when not logged in, send user to the sign up page
    unauthenticated :user do
      root to: 'devise/registrations#new', as: :unauthenticated_root
    end
  end
end
