UrlShortener::Application.routes.draw do
  resources :urls
  get "/:short_url", :to => "redirects#create"
end
