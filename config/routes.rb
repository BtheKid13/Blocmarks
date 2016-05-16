Rails.application.routes.draw do


  root to: 'welcome#index'
  
  get 'user/show'

  get 'about' => 'welcome#about'

  get 'show' => 'users#show'

  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :topics do
    resources :bookmarks, except: [:index]
  end

  resources :bookmarks, only: [] do
    resources :likes, only: [:create, :destroy]
  end

  post :incoming, to: 'incoming#create'

end
