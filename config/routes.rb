Rails.application.routes.draw do
  get '/new', to: 'articles#new', as: :new_article

  get '/', to: 'articles#index', as: :articles
  get '/:id', to: 'articles#show', as: :article

  post '/', to: 'articles#create'

  get '/:id/edit', to: 'articles#edit', as: :edit_article
  patch '/:id', to: 'articles#update'

  delete '/:id', to: 'articles#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
