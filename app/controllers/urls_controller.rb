class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.create(params[:url])
    redirect_to url_path(@url.id)
  end

  def show
    @url = Url.find_by_id(params[:id])
  end

  def index
    @url = Url.all
  end
end
