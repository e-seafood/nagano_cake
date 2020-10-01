Rails.application.routes.draw do
  devise_for :publics

  root 'publics/homes#top'
  get '/about' => "publics/homes#about"

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


