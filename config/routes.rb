Rails.application.routes.draw do
  resources :topics, only: [:index, :show]
  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'angutar-items', to: 'portfolios#angular' 
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_snow'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  resources :blogs do
    member do 
      get :toggle_status
    end
  end

  
  mount ActionCable.server => '/cable'
  
  root to: 'pages#home'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
