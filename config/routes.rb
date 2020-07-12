Rails.application.routes.draw do 
 root :to => "homes#top"
 devise_for :users,controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
   resources :users, only: [:show,:update,:edit,:index,:destroy]
   get "user/:user_id/show_info" => "users#show_info", as:'show_info'
   get "user/index_info" => "users#index_info"
   get "user/women_index" => "users#women_index"
   get "user/men_index" => "users#men_index"
   get "user/women_index_info" => "users#women_index_info"
   get "user/men_index_info" => "users#men_index_info"
   get "styiling/:styiling_id/styiling_info" => "styilings#styiling_info", as:'styiling_info'
   get "styilings/index_list" => "styilings#index_list"
   get "styilings/index" => "styilings#index", as: "styilings_index"
   get "styilings/women_index" => "styilings#women_index"
   get "styilings/men_index" => "styilings#men_index"
   get "styilings/women_index_info" => "styilings#women_index_info"
   get "styilings/men_index_info" => "styilings#men_index_info"
   get "styilings/all_ranking" => "styilings#all_ranking"
   get "styilings/all_ranking_info" => "styilings#all_ranking_info"
   get "styilings/women_ranking" => "styilings#women_ranking"
   get "styilings/men_ranking" => "styilings#men_ranking"
   get "styilings/women_ranking_info" => "styilings#women_ranking_info"
   get "styilings/men_ranking_info" => "styilings#men_ranking_info"
   resources :styilings do
   resource :favorites, only: [:create, :destroy]
   resources :styiling_comments, only: [:create, :destroy]
  end
  get "homes/about" => "homes#about"
  get "homes/top" => "homes#top"
  get "homes/top_info" => "homes#top_info"
  post 'follow/:id' => 'relationships#follow', as: 'follow' 
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  get "relationship/:user_id/follows" => "relationships#follows", as:'user_follows'
  get "relationship/:user_id/followers" => "relationships#followers", as:'user_followers'
  get '/search' => 'search#search'
  get 'contacts/new' => "contacts#new"
  post 'contacts/create' => "contacts#create"

 
end