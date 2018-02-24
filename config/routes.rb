Rails.application.routes.draw do
  devise_for :admins
  devise_for :managers
  devise_for :activists
  devise_for :users, controllers: { registrations: "users/registrations" }

  namespace :admins do
    
    root to: "dashboard#show"
  end

  root to: "pages#home"
end
