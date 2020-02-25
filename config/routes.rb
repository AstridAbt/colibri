Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :quests do
    resources :participations, only: [:create]
  end

  resources :participations, only: [:index, :destroy]
=======
  resources :quests, only: [:index, :show]
>>>>>>> master
end
