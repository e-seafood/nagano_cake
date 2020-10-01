Rails.application.routes.draw do
  devise_for :publics
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
