Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'top'
      get 'worst'
    end
    member do
      get 'chef'
      get 'address'
      # restaurants/33/address
    end
    resources :reviews, shallow: true
    namespace :admin do
      resources :restaurants, only: [:index]
    end
  end

end



# get 'restaurants/top', to: "restaurants#top", as: :top_restaurants
