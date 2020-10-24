Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letters" if Rails.env.development?

  devise_for :users
  root "pages#index"
end
