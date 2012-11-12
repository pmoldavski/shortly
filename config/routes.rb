UrlShortener::Application.routes.draw do
  devise_for :users

  root :to => 'urls#index'

  resources :urls

  get "/:short_url", :to => "visits#create", :as => "short"
end
