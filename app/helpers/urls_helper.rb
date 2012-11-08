module UrlsHelper

  def full_short_link(shortened)
    short_url = "#{request.host_with_port}/#{shortened}"
    link_to(short_url, short_url)
  end
end
