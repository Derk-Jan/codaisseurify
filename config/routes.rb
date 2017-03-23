Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do

  root to: 'artists#index'

  resources :songs

  resources :artists, only: [:index, :show] do
    resources :songs
  end

  resources :photos
end
