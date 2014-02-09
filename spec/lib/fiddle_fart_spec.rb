require 'spec_helper'

describe "FiddleFart" do

  it "parser" do
    ["http://jsfiddle.net/cavneb/XbDEM/3/", "http://jsfiddle.net/cavneb/XbDEM/3/embedded/result/"].each do |url|
      obj = FiddleFart::Parser.parse(url)
      obj.should be_an_instance_of(FiddleFart::Jsfiddle)
    end
    ["http://jsbin.com/eVIyOTE/3/edit", "http://jsbin.com/eVIyOTE/3/", "http://jsbin.com/eVIyOTE/3/edit?html,output", 
     "http://emberjs.jsbin.com/eVIyOTE/3/edit", "http://emberjs.jsbin.com/eVIyOTE/3/", "http://emberjs.jsbin.com/eVIyOTE/3/edit?html,css,js,output"].each do |url|
      obj = FiddleFart::Parser.parse(url)
      obj.should be_an_instance_of(FiddleFart::Jsbin)
    end
    ["http://codepen.io/cxanthos/pen/hbgIL", "http://codepen.io/cxanthos/details/hbgIL"].each do |url|
      obj = FiddleFart::Parser.parse(url)
      obj.should be_an_instance_of(FiddleFart::Codepen)
    end
    ["http://plnkr.co/edit/bN8Z0j?p=preview", "http://plnkr.co/edit/bN8Z0j", "http://embed.plnkr.co/bN8Z0j/preview"].each do |url|
      obj = FiddleFart::Parser.parse(url)
      obj.should be_an_instance_of(FiddleFart::Plnkr)
    end
  end

  describe "jsfiddle" do
    ["http://jsfiddle.net/cavneb/XbDEM/3/", "http://jsfiddle.net/cavneb/XbDEM/3/embedded/result/"].each do |url|
      it url do
        pe = FiddleFart::Jsfiddle.parse(url)
        pe.id.should == "XbDEM"
        pe.username.should == "cavneb"
        pe.revision.should == "3"
      end
    end
  end

  describe "jsbin" do
    ["http://jsbin.com/eVIyOTE/3/edit", "http://jsbin.com/eVIyOTE/3/", "http://jsbin.com/eVIyOTE/3/edit?html,output", 
     "http://emberjs.jsbin.com/eVIyOTE/3/edit", "http://emberjs.jsbin.com/eVIyOTE/3/", "http://emberjs.jsbin.com/eVIyOTE/3/edit?html,css,js,output"].each do |url|
      it url do
        pe = FiddleFart::Jsbin.parse(url)
        pe.id.should == "eVIyOTE"
        pe.revision.should == "3"
      end
    end
  end

  describe "codepen" do
    ["http://codepen.io/cxanthos/pen/hbgIL", "http://codepen.io/cxanthos/details/hbgIL"].each do |url|
      it url do
        pe = FiddleFart::Codepen.parse(url)
        pe.id.should == "hbgIL"
        pe.username.should == "cxanthos"
      end
    end
  end

  describe "plnkr" do
    ["http://plnkr.co/edit/bN8Z0j?p=preview", "http://plnkr.co/edit/bN8Z0j", "http://embed.plnkr.co/bN8Z0j/preview"].each do |url|
      it url do
        pe = FiddleFart::Plnkr.parse(url)
        pe.id.should == "bN8Z0j"
      end
    end
  end
end


