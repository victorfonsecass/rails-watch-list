Rails.application.routes.draw do

  resources :bookmarks, only: :destroy
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
  end

  # get 'lists/lists'
  # get 'bookmarks/boorkmarks'
  # get 'movies/movies'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
