Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  root 'pages#home'

  get 'about' => 'pages#about'

  get 'contact' => 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
