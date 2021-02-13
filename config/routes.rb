Rails.application.routes.draw do
  get 'users/create'
  resources :uses
  resources :items
  root 'home#index'
  devise_for :users

  scope module: 'api' do
    namespace :v1 do
      resources :items
      resources :uses
      resources :users
      get "/getUseDate", to: "items#getUseDate"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
