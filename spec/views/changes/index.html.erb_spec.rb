require 'spec_helper'

describe "changes/index.html.erb" do
  before(:each) do
    assign(:changes, [
      stub_model(Change),
      stub_model(Change)
    ])
  end

  it "renders a list of changes" do
    render
  end
end
