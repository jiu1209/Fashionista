Rails.application.routes.draw do
root :to => "homes#top"
 devise_for :users,controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
   resources :users, only: [:show,:update,:edit,:index,:destroy]
   get "styilings/index_list" => "styilings#index_list"
   get "styilings/:id/index" => "styilings#index", as: "styilings_index"
   resources :styilings do
   resource :favorites, only: [:create, :destroy]
   resources :styiling_comments, only: [:create, :destroy]
  end
  get "homes/about" => "homes#about"
  get "homes/top" => "homes#top"
end