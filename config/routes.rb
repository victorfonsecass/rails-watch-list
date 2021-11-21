Rails.application.routes.draw do
 # só o que o usuário pode interagir

  resources :lists, only: %i[index show new create] do # new = criando uma lista dos filmes  GET NEW POST CREATE ( postando o q criei)
    resources :bookmarks, only: %i[new create] # new = criando um comentário p avaliar o filme
  end
  resources :bookmarks, only: :destroy
  # get 'lists/lists'
  # get 'bookmarks/boorkmarks'
  # get 'movies/movies'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
