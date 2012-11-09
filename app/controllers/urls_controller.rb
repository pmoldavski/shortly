class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(params[:url])
    if @url.save
      redirect_to url_path(@url.id)
    else

      flash[:error] = "already exists"
      render :new
    end
  end

  def show
    @url = Url.find_by_id(params[:id])
  end

  def index
    @url = Url.all
  end
end
