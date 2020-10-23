Rails.application.routes.draw do
  devise_for :users
  root 'static#home'
  resources :groups, only: [:index, :show, :new, :create] do
    resources :memberships, only: [:index], path: "/members"
  end
  resources :events, only: [:index, :show, :new, :create]
  resources :rsvps, only: [:create, :destroy]
  resources :memberships, only: [:create, :destroy]
end
