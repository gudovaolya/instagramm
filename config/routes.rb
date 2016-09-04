Rails.application.routes.draw do
  
  root 'site#index'

  get 'users/show/:id' => 'users#show', as: 'profile'

  devise_for :users

 
  resources :photos
  resources :comments

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :relationships, only: [:create, :destroy]

  # scope :users do
  # 	resources :photos
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# scope :admin do    
#     resources :restaurants do
#       resources :foods
#       resources :categories
#     end          
#   end
#   resources :carts 


end
