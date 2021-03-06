Rails.application.routes.draw do
  
  resources :topics do
    resources :posts, except: [:index]
  end
  
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    
    post('/up_vote' => 'votes#up_vote', as: :up_vote)
    post('/down_vote' => 'votes#down_vote', as: :down_vote)
  end
  
  resources :users, only: [:new, :create]
  
  resources :sessions, only: [:new, :create, :destroy]

  resources :advertisements
  

  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
