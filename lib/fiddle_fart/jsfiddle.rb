module FiddleFart
  class Jsfiddle
    attr_accessor :id, :username, :revision

    def initialize(attrs={})
      attrs.each { |k,v| instance_variable_set("@#{k}", v) }
    end

    def self.parse(url)
      obj = self.new
      host, domain, username, id, revision = url.scan(/([^\/^:]+)/).flatten
      obj.id = id
      obj.username = username
      obj.revision = revision
      obj
    end

    def edit_link
      "http://jsfiddle.net/#{@username}/#{@id}/#{@revision}/"
    end

    def embed_url
      "http://jsfiddle.net/#{@username}/#{@id}/#{@revision}/embedded/result/"
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

