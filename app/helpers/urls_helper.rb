module UrlsHelper

  def full_short_link(shortened)
    short_url = short_url(shortened)
    link_to(short_url, short_url)#, visits_path, :method => :post)
  end
end
