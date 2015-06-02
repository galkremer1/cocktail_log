Rails.application.routes.draw do
resources :coctails
root 'coctails#index'
end
