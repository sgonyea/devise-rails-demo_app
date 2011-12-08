require 'spec_helper'

describe "widgets/index.html.haml" do
  before(:each) do
    assign(:widgets, [
      stub_model(Widget,
        :name => "Name",
        :description => "Description",
        :price => 1.5,
        :currency => "Currency",
        :inventory => 1
      ),
      stub_model(Widget,
        :name => "Name",
        :description => "Description",
        :price => 1.5,
        :currency => "Currency",
        :inventory => 1
      )
    ])
  end

  it "renders a list of widgets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
