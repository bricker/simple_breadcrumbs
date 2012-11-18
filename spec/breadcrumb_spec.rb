require File.expand_path("../../spec_helper", __FILE__)

describe SimpleBreadcrumbs::Breadcrumb do
  it "has a title and a link" do
    breadcrumb = SimpleBreadcrumbs::Breadcrumb.new(title: "Home", link: "/home")
    breadcrumb.title.should eq "Home"
    breadcrumb.link.should eq "/home"
  end
end

#------------------

describe SimpleBreadcrumbs::Breadcrumbs do
  describe "#breadcrumb" do
    context "ActionController::Base class" do
      let(:controller) { PeopleController = Class.new { include SimpleBreadcrumbs::Breadcrumbs } }
      
      it "has both a title and link when both specified" do
        controller.breadcrumb "Title", "/some/path"
        controller.breadcrumbs.size.should eq 1
        controller.breadcrumbs.first.title.should eq "Title"
        controller.breadcrumbs.first.link.should eq "/some/path"
      end
  
      it "only has a title when no link is specified" do
        controller.breadcrumb "Title"
        controller.breadcrumbs.size.should eq 1
        controller.breadcrumbs.first.title.should eq "Title"
        controller.breadcrumbs.first.link.should eq nil
      end
      
      it "accepts multiple breadcrumbs" do
        controller.breadcrumb "Title", "/some/path", "Other", nil, "Page"
        controller.breadcrumbs.size.should eq 3
        controller.breadcrumbs[0].title.should eq "Title"
        controller.breadcrumbs[0].link.should eq "/some/path"
        controller.breadcrumbs[1].title.should eq "Other"
        controller.breadcrumbs[1].link.should eq nil
        controller.breadcrumbs[2].title.should eq "Page"
        controller.breadcrumbs[2].link.should eq nil
      end
    end
  end
end
