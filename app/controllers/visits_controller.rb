class VisitsController < ApplicationController
  def create
    url = Url.find_by_shortened(params[:short_url])
    url.visits.create
    # Visit.create(:url_id => url.id)
    # Visit.create(:url_id => params[:url_id])
    # redirect_to :???????
    redirect_to url.original
  end
end