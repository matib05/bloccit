Rails.application.routes.draw do
  
  resources :topics do
    resources :posts, except: [:index]
  end
  
  resources :users, only: [:new, :create]

  resources :advertisements
  

  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
