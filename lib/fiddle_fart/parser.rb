module FiddleFart
  class Parser
    def self.parse(url)
      if url.downcase.include? 'jsfiddle'
        return Jsfiddle.parse(url)
      elsif url.downcase.include? 'jsbin'
        return Jsbin.parse(url)
      elsif url.downcase.include? 'codepen.io'
        return Codepen.parse(url)
      elsif url.downcase.include? 'plnkr'
        return Plnkr.parse(url)
      else
        raise "Invalid URL"
      end
    end
  end
end

