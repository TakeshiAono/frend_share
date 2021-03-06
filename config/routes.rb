Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :pictures do
    collection do
      post 'confirm'
    end
  end
  resources :images
  resources :sessions ,only: [:create, :new]
  resources :users ,only: [:create, :new]
end
