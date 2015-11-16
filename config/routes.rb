Rails.application.routes.draw do

  devise_for :users, :projects
  root to: "home#index"

  resources :projects




end
