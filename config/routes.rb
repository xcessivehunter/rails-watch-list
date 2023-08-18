Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[index new show create destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
  resources :movies, only: %i[index show new create edit update destroy]
end

