Rails.application.routes.draw do
  resources :images do
    collection do 
      post 'confirm'
    end
  end

  resources :sessions ,only: [:index, :new] do
    collection do
      get 'login'
    end
  end
end
