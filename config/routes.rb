Rails.application.routes.draw do
  root to: 'gardens#index'

  resources :gardens, only: [:index, :show] do
    # nested because we want the garden id in order to create the plant
    resources :plants, only: [:create]
  end

  # un-nested because we already have the plant id, we don't need the garden id
  resources :plants, only: [:destroy]
end
