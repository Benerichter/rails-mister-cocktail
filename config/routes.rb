Rails.application.routes.draw do
  resources :cocktails, except: %i[edit update destroy] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: :destroy
end
