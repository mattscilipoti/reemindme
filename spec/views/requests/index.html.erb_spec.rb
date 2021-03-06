require 'spec_helper'

describe "requests/index" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :phrase => "Phrase"
      ),
      stub_model(Request,
        :phrase => "Phrase"
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phrase".to_s, :count => 2
  end
end
