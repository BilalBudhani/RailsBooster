Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letters" if Rails.env.development?


  # Authentication
  get :sign_in, to: "sessions#index", as: :sign_in
  post :sign_in, to: "sessions#create"
  delete :sign_out, to: "sessions#delete", as: :sign_out

  # Registration
  get :sign_up, to: "registration#index", as: :sign_up
  post :sign_up, to: "registration#create"

  root "pages#index"
end
