Rails.application.routes.draw do
  resources :dentista
  resources :articles
  root "articles#index"
end
