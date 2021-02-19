Rails.application.routes.draw do
  resources :cocktails
  resources :ingredients, except: [:new, :create]
end
