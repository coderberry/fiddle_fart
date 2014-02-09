module FiddleFart
  class Jsbin
    attr_accessor :id, :revision

    def initialize(attrs={})
      attrs.each { |k,v| instance_variable_set("@#{k}", v) }
    end

    def self.parse(url)
      obj = self.new
      host, domain, id, revision = url.scan(/([^\/^:]+)/).flatten
      obj.id = id
      obj.revision = revision
      obj
    end

    def share_link
      "http://jsbin.com/eVIyOTE/#{@id}/#{@revision}/"
    end

    def edit_link
      "http://jsbin.com/eVIyOTE/#{@id}/#{@revision}/edit"
    end

    def embed_url
      "http://jsbin.com/#{@id}/#{@revision}/embed"
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

