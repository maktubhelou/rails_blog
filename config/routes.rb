Rails.application.routes.draw do
  root 'welcome#index'
  get 'articles/index'
  get 'comments/create'
  get 'comments/destroy'
  devise_for :users
  resources :articles do
    resources :comments
  end
  resources :tags, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
