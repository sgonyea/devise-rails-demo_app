require 'spec_helper'

describe "widgets/new.html.haml" do
  before(:each) do
    assign(:widget, stub_model(Widget,
      :name => "MyString",
      :description => "MyString",
      :price => 1.5,
      :currency => "MyString",
      :inventory => 1
    ).as_new_record)
  end

  it "renders new widget form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => widgets_path, :method => "post" do
      assert_select "input#widget_name", :name => "widget[name]"
      assert_select "input#widget_description", :name => "widget[description]"
      assert_select "input#widget_price", :name => "widget[price]"
      assert_select "input#widget_currency", :name => "widget[currency]"
      assert_select "input#widget_inventory", :name => "widget[inventory]"
    end
  end
end
