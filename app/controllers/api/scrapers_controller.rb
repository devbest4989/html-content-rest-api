class Api::ScrapersController < Api::BaseController
  skip_before_filter :verify_authenticity_token

  def scrape

    @current_page.contents.each do |content|
      @element = Element.new
      @element.url = @current_page.url
      @element.elemtype = "content"
      @element.content = content
      @element.save      
    end

    @current_page.links.each do |href|
      @element = Element.new
      @element.url = @current_page.url
      @element.elemtype = "link"
      @element.content = href
      @element.save      
    end

    render status: 200, json: { page: output(@current_page) }
  end

  def page_title
    render status: 200, json: { title:  @current_page.title }
  end

  def page_description
    render status: 200, json: { description:  @current_page.description }
  end

  def page_metatags
    render status: 200, json: { meta_tags:  @current_page.meta }
  end

  def page_links
    render status: 200, json: { links:  @current_page.links }
  end

  def page_images
    render status: 200, json: { images:  @current_page.images }
  end

  def contents
    render status: 200, json: { contents:  @current_page.contents }
  end
  
private
  def output(page)
    output = {     
      url: page.url,      
      title: page.title,
      port: page.port,
      description: page.description,
      links: page.links,
      contents: page.contents
    }
  end
end
