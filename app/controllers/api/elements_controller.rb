class Api::ElementsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def page_urls
    urls = Element.select(:url).group(:url)
    render status: 200, json: { history:  urls.as_json }
  end
end
