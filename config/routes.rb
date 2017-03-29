Rails.application.routes.draw do
  get 'pagina/home'

  resources :vendas
  resources :jogos
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pagina#home'
end
