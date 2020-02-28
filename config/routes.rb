Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :profiles, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quests do
    resources :participations, only: [:create]
  end
  resources :participations, only: [:index, :destroy, :edit] do
    patch :finish_participation
  end

end
