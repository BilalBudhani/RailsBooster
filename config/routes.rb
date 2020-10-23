Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letters" if Rails.env.development?

  root "pages#index"
end
