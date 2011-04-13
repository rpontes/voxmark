require 'spec_helper'

describe "changes/edit.html.erb" do
  before(:each) do
    @change = assign(:change, stub_model(Change))
  end

  it "renders the edit change form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => changes_path(@change), :method => "post" do
    end
  end
end
