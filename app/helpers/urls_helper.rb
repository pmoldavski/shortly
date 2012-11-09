module UrlsHelper

  def full_short_link(shortened)
    short_url = short_url_url(shortened)
    link_to(short_url, short_url)
  end
end
