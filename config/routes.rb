Rails.application.routes.draw do

  devise_for :users

  authenticate :user, ->(user) { user.admin? } do
    mount GoodJob::Engine => 'good_job'
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
