require 'spec_helper'

describe "changes/new.html.erb" do
  before(:each) do
    assign(:change, stub_model(Change).as_new_record)
  end

  it "renders new change form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => changes_path, :method => "post" do
    end
  end
end
