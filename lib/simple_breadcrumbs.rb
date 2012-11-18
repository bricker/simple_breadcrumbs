require "simple_breadcrumbs/version"
require "simple_breadcrumbs/breadcrumb"

module SimpleBreadcrumbs
  def self.included(base)
    base.send :attr_reader, :breadcrumbs
  end

  #--------------
  # Use this method to add breadcrumbs.
  def breadcrumb(*args)
    @breadcrumbs ||= []

    args.each_slice(2).map do |pair|
      crumb = Breadcrumb.new(title: pair[0], link: pair[1])
      @breadcrumbs.push crumb
    end
  end  
end
  