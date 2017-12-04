Rails.application.routes.draw do
  resources :leagues do
    resources :teams, except: [:index]
  end
  resources :teams, only: [:index]
  devise_for :users
  get 'about' => 'welcome#about'

  root 'welcome#index'
end
