Rails.application.routes.draw do
  resources :images do
    collection do 
      post 'confirm'
    end
  end
  resources :sessions ,only: [:create, :new]
  resources :users ,only: [:create, :new]
end
