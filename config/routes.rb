Spree::Core::Engine.add_routes do
  resources :wishlists
  resources :wished_products, only: [:create, :update, :destroy]
  get '/wishlist' => 'wishlists#default', as: 'default_wishlist'

  namespace :admin do
    resources :wishlists do
      collection do
        post :copy_wishlists
      end
    end
  end
end
