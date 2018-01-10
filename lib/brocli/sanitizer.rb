module Sanitizer

  #check for the scheme of url passed and append a scheme if not present since httparty requires scheme as well
  def sanitizer(url)
    uri = URI.parse(url)
    if not uri.scheme
      link = "https://#{url}"
      uri = URI(link)
    end
    uri
  end

  #add any other url sanitizers here
end