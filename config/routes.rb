Rails.application.routes.draw do
  resources :misiones
  resources :enemigos
  resources :personas
  resources :companeros
  get 'welcome/index'
  resources :aliados
  resources :patrocinadors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
