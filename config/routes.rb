Rails.application.routes.draw do
  devise_for :publics
  
  root 'homes#top'
  get '/homes/about' => "homes#about"

  scope module: :publics do
    resources :items,only: [:index,:show]

      resource :publics,only: [:show,:edit,:update] do
      get '/unsubscribe' => "publics#unsubscribe"
      patch '/withdraw'=> "publics#withdraw"
      end

      resources :carts,only: [:index,:update,:create,:destroy] do
          delete '/destroy_all' => 'carts#destroy_all'
      end

      resources :orders,only: [:new,:index,:show,:create] do
        post '/confirm' => "orders#confirm"
        get '/thank' => "orders#thank"
      end

      resources :shippings,only: [:index,:create,:edit,:update,:destroy]
    end

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 管理者側のルーティング設定
  namespace :admins do
    resources :publics, only: [:index, :edit, :show, :update]
    resources :items, only: [:index, :create, :new, :edit, :show, :update]
    resources :orders, only: [:index, :show, :update]
    resources :order_items, only: [:update]
    resources :genres, only: [:index, :create, :edit, :update]
  end
  get "admins/orders/top" => "admins/orders#top"

end
