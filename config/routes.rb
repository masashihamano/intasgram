Rails.application.routes.draw do

  root 'posts#index'

  devise_for :users,
  controllers: { registrations: 'registrations' }

  resources :users, only: %i(show)
  # resources :users, only: [:show]

  # resources :posts, only: %i(index new create show destroy) do
  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :photos, only: %i(create)
    resources :likes, only: %i(create destroy), shallow: true
    # resources :likes, only: [:create, :destroy], shallow: true
    resources :comments, only: %i(index create destroy), shallow: true
    # resources :comments, only: [:index :create :destroy], shallow: true

  end

end
