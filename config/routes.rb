Rails.application.routes.draw do
  
 devise_for :users
  root 'homes#top'
  get "home/about" => "homes#about"
  resources :books,only:[:new,:create,:index,:show,:destroy,:edit,:update]
  resources :users,only:[:new,:create,:index,:show,:edit,:update]
end
