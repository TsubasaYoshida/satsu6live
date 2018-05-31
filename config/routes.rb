Rails.application.routes.draw do
  post 'game_infos/find_league'
  post 'game_infos/logout'
  post 'login/auth'
  resources :login
  resources :game_infos do
    member do
      get :score
    end
    collection do
      get :list
    end
  end
  root to: 'game_infos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
