Rails.application.routes.draw do
  get 'calendar/index'
  get 'calendar/callback'
  resources :labels
  get 'posts/index_likes' => 'posts#index_likes'
  get 'posts/index_new' => 'posts#index_new'
  get 'posts/mailform' => 'posts#mailform'
  resources :posts
  
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create]
  end
 resources :users


 get 'policy/riyoukiyaku' => 'policy#riyoukiyaku'
 get 'policy/privacypolicy' => 'policy#privacypolicy'
 get 'hello/index' => 'hello#index'
 root 'posts#index'
 get 'post/this_month' => 'posts#this_month'
 get 'post/calendar' => 'posts#calendar'
 get "javascript" => "posts#javascript"
 post 'like/:id' => 'likes#create', as: 'create_like'
 delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
 get 'users' => 'users#index'
 get 'post/detail_search' => 'posts#detail_search'
 get  'download'  => 'posts#download'
 get 'get' =>'posts#get'
 get 'idol' => 'idol#test'
 get 'users/autocomplete_kyoudou1/:term' => 'users#autocomplete_kyoudou1'
 get 'question' => 'faq#question'
end
