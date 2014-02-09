module FiddleFart
  class Codepen
    attr_accessor :id, :username

    def initialize(attrs={})
      attrs.each { |k,v| instance_variable_set("@#{k}", v) }
    end

    def self.parse(url)
      obj = self.new
      host, domain, username, view, id = url.scan(/([^\/^:]+)/).flatten
      obj.id = id
      obj.username = username
      obj
    end

    def share_link
      "http://codepen.io/#{@username}/full/#{@id}"
    end

    def edit_link
      "http://codepen.io/#{@username}/pen/#{@id}"
    end

    def embed_url
      nil
    end

    def as_json
      super
    end

    def as_json
      {
        edit_link: edit_link,
        embed_url: embed_url,
        share_link: share_link
      }
    end
  end
end

