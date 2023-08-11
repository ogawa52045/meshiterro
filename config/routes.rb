Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
<<<<<<< HEAD
=======
  resources :users, only: [:show, :edit, :update]
>>>>>>> 369222b61a4cc334ecbe50fd776af1a1da5ce032
  get "/homes/about" => "homes#about", as: "about"
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
