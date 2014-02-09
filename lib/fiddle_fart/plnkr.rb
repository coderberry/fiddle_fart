module FiddleFart
  class Plnkr
    attr_accessor :id, :username

    def initialize(attrs={})
      attrs.each { |k,v| instance_variable_set("@#{k}", v) }
    end

    def self.parse(url)
      obj = self.new
      if url.include?("embed.plnkr")
        host, domain, id, view = url.scan(/([^\/^:]+)/).flatten
      else
        host, domain, view, id = url.scan(/([^\/^:]+)/).flatten
      end
      obj.id = id.split("?").first
      obj
    end

    def edit_link
      "http://plnkr.co/edit/#{@id}"
    end

    def embed_url
      "http://embed.plnkr.co/#{@id}/preview"
    end

    alias_method :share_link, :embed_url

    def as_json
      {
        edit_link: edit_link,
        embed_url: embed_url,
        share_link: share_link
      }
    end
  end
end

