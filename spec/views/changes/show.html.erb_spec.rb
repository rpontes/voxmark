require 'spec_helper'

describe "changes/show.html.erb" do
  before(:each) do
    @change = assign(:change, stub_model(Change))
  end

  it "renders attributes in <p>" do
    render
  end
end
