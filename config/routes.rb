Rails.application.routes.draw do
  resources :posts do
    collection do 
      post 'confirm'
    end
  end

  resources :sessions ,only: [:index, :new] do
    collection do
      post 'login'
    end
  end
end
