Rails.application.routes.draw do
  devise_for :clients, defaults: { format: :json }, controllers: { sessions: 'my_application_sessions' }
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/informations', to: "static_pages#infos"
  get '/contact', to: "static_pages#contact"
  get '/inscription', to: "clients#new"
  get '/done', to: "static_pages#done"
end