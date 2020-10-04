Rails.application.routes.draw do
  root 'publics/homes#top'
  get '/about' => "publics/homes#about"

  scope module: :publics do
    resources :items,only: [:index,:show]
<<<<<<< HEAD
    
    resource :publics,only: [:show] do
=======

    resource :publics,only: [:show,:edit,:update] do
>>>>>>> e27cecf1126abadba88bfebea3678b217c0880e4
      get '/unsubscribe' => "publics#unsubscribe"
      patch '/withdraw'=> "publics#withdraw"

      get '/detailedit' => 'publics#edit', as: :edit
      patch '/detailupdate' => 'publics#update', as: :update
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

    devise_for :publics, :controllers => {
      :registrations => 'publics/devise/registrations',
      :sessions => 'publics/devise/sessions',
      :passwords => 'publics/devise/passwords'
    }

  namespace :admins do
    resources :publics, only: [:index, :edit, :show, :update]
    resources :items, only: [:index, :create, :new, :edit, :show, :update]
    resources :orders, only: [:index, :show, :update]
    resources :order_items, only: [:update]
    resources :genres, only: [:index, :create, :edit, :update]
  end
  get "admins/orders/top" => "admins/orders#top"
<<<<<<< HEAD
  
  devise_for :admins, :controllers => {
    :registrations => 'admins/devise/registrations',
    :sessions => 'admins/devise/sessions',
    :passwords => 'admins/devise/passwords'
  }
  
=======

  devise_for :admins

>>>>>>> e27cecf1126abadba88bfebea3678b217c0880e4
end
