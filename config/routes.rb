Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contentkeywords
  resources :contents
  resources :homes
  resources :infos
  resources :projects
  resources :users
  resources :works
  resources :abouts
  resources :myhelps
  resources :sliderkeywords
  resources :sliders
  resources :sucais
end
