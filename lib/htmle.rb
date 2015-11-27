#!/usr/bin/env ruby

# file: htmle.rb

require 'svgle'



DEFAULT_HTML_CSS = <<CSS

* {
    margin: 5 5; padding: 10 10;
    font-size: 16; color: red;
  }
html {background-color: white;}
div {background-color: green; padding: 30 10; margin: 5 5;}

CSS

class Htmle < Domle

  class Box < Element
    attr2_accessor *%i(class width height background-color margin padding)
  end

  class Html < Box
  end
  
  class Head < Box
  end

  class Body < Box
  end  
  
  class Div < Box
  end
  
  private
  
  
  def find_add_css()

    # add the default CSS
    add_css DEFAULT_HTML_CSS

    @doc.root.xpath('//style').each {|e|  add_css e.text }   

    # check for an external CSS file
    # still to-do


  end
    
  
  def defined_elements()
    {
      doc: Rexle::Element,
      html: Htmle::Html,
      head: Htmle::Head,
      body: Htmle::Body,
      div: Htmle::Div
    }    
  end
      
end