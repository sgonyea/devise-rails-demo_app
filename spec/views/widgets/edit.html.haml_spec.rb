require 'spec_helper'

describe "widgets/edit.html.haml" do
  before(:each) do
    @widget = assign(:widget, stub_model(Widget,
      :name => "MyString",
      :description => "MyString",
      :price => 1.5,
      :currency => "MyString",
      :inventory => 1
    ))
  end

  it "renders the edit widget form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => widgets_path(@widget), :method => "post" do
      assert_select "input#widget_name", :name => "widget[name]"
      assert_select "input#widget_description", :name => "widget[description]"
      assert_select "input#widget_price", :name => "widget[price]"
      assert_select "input#widget_currency", :name => "widget[currency]"
      assert_select "input#widget_inventory", :name => "widget[inventory]"
    end
  end
end
