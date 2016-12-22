#!/usr/bin/env ruby

# file: htmle.rb

require 'svgle'



DEFAULT_HTML_CSS = <<CSS

* {
    margin: 0.4em; padding: 0.6em;
    font-size: 16; color: rgb(255,0,0);
  }
html {background-color: white;}
div {background-color: black; padding: 30 10; margin: 5 5;}

CSS

class Htmle < Domle

  class Box < Element
    attr2_accessor *%i(class width height background-color margin padding)
    
    def boundary()
      [0,0,0,0]
    end      
  end

  class Html < Box
  end
  
  class Head < Box
  end
  
  class Title < Box
  end
  
  class Style < Box
  end  

  class Body < Box
  end
  
  class Strong < Box
  end    
  
  class Div < Box
  end
  
  class P < Box
  end
  
  class A < Box
  end
  
  class Ul < Box
  end  
  
  class Ol < Box
  end

  class Li < Box
  end

  class Input < Box
  end
  
  private
  
  
  def find_add_css()

    # add the default CSS
    add_css DEFAULT_HTML_CSS, override: false

    @doc.root.xpath('//style').each {|e| add_css e.text }   

    # check for an external CSS file
    # still to-do


  end
    
  
  def defined_elements()
    {
      doc: Rexle::Element,
      html: Htmle::Html,
      head: Htmle::Head,
      title: Htmle::Title,
      style: Htmle::Style,
      body: Htmle::Body,
      b: Htmle::Strong,
      strong: Htmle::Strong,
      div: Htmle::Div,
      p: Htmle::P,
      a: Htmle::A,
      ul: Htmle::Ul,
      ol: Htmle::Ol,
      li: Htmle::Li,
      input: Htmle::Input
      
    }    
  end
      
end