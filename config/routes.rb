Rails.application.routes.draw do

  resources :leagues do
    resources :teams, except: [:index]
    resources :events
  end
  resources :teams, only: [:index]
  devise_for :users
  get 'about' => 'welcome#about'

  root 'welcome#index'
end
