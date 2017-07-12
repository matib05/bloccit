Rails.application.routes.draw do
  
  resources :topics do
    resources :posts, :sponsored_post, except: [:index]
  end

  resources :advertisements

  get 'about' => 'welcome#about'
  
  get 'sponsored_post/new' => 'sponsored_post#new'
  root 'welcome#index'

end
