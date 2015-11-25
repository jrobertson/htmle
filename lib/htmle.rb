#!/usr/bin/env ruby

# file: htmle.rb

require 'svgle'



DEFAULT_CSS = <<CSS

html {background-color: white}
div {background-color: green; padding: 30 10; margin: 5 5;}

CSS

class Htmle < Domle

  class Box < Element
    attr2_accessor *%i(class width height)
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
  
  def fetch_style(attribute)
    
    h = super attribute
    
    %i(margin padding).each do |x|

      if h.has_key? x then

        a = expand_shorthand(h[x]) 
        h[x] = ([(sym.to_s + '-')] * 4).zip.%w(top right bottom left).zip(a)

      end

    end

    
  end
  
  def find_add_css()

    # add the default CSS
    add_css DEFAULT_CSS


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
