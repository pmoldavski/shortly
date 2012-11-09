UrlShortener::Application.routes.draw do
  resources :urls

  get "/:short_url", :to => "visits#create", :as => "short"
end
