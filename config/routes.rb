Rails.application.routes.draw do
  resources :cocktails, except: %i[edit update destroy] do
    resources :doses, only: %i[new create]
    collection do
      get :searched
    end
  end
  resources :doses, only: :destroy

  root to: 'pages#home'
end
