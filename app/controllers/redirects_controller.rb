class RedirectsController < ApplicationController
  def create
    url = Url.find_by_shortened(params[:short_url])
    redirect_to url.original
  end
end