Rails.application.routes.draw do
  devise_for :admins
  devise_for :managers
  devise_for :activists
  devise_for :users, controllers: { registrations: "users/registrations" }

  namespace :cabinet do
    namespace :admin do
      resources :managers

      root to: "dashboard#show"
    end

  end

  root to: "pages#home"
end
