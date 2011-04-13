require "spec_helper"

describe ChangesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/changes" }.should route_to(:controller => "changes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/changes/new" }.should route_to(:controller => "changes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/changes/1" }.should route_to(:controller => "changes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/changes/1/edit" }.should route_to(:controller => "changes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/changes" }.should route_to(:controller => "changes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/changes/1" }.should route_to(:controller => "changes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/changes/1" }.should route_to(:controller => "changes", :action => "destroy", :id => "1")
    end

  end
end
