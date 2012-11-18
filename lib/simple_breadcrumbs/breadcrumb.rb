module SimpleBreadcrumbs
  class Breadcrumb
    attr_accessor :title, :link
    
    def initialize(attributes={})
      self.title = attributes[:title]
      self.link  = attributes[:link]
    end
  end
end
