class VisitsController < ApplicationController
  def create
    url = Url.find_by_shortened(params[:short_url])
    url.visits.create

    redirect_to url.original
  end
end