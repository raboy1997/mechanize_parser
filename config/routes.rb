
Rails.application.routes.draw do
  root 'feeds#index'

  namespace :api do
    get 'feeds' => 'feeds#index'
    get 'feeds/:id' => 'feeds#show'
  end
end
