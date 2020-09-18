require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    assign(:lists, [
      List.create!(
        :name => "Name",
        :idcard => "Idcard",
        :phone => "Phone"
      ),
      List.create!(
        :name => "Name",
        :idcard => "Idcard",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Idcard".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
