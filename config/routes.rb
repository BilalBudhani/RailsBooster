Rails.application.routes.draw do

  devise_for :users

  # Internal routes
  mount LetterOpenerWeb::Engine, at: "/letters" if Rails.env.development?
  authenticate :user, ->(user) { user.admin? } do
    mount GoodJob::Engine => 'good_job'
  end

  # Defines the root path route ("/")
  root "pages#welcome"
end
