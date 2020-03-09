Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  match 'movies/:id/director_movies', to:'movies#director_movies', as:'director_movies', via: :get
end
