Rails.application.routes.draw do
root to:"books#index"

  resources :books do
    resources :topics
  end

  resources :topics do
    resources :comments
  end
end
