


Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:index, :show]
end


# resources :nome que dá todas as rotas para articles, mas como apenas queremos algumas, definimos
# com only[:ações e rotas que queremos aqui]