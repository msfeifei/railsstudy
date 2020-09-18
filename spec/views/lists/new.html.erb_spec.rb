require 'rails_helper'

RSpec.describe "lists/new", type: :view do
  before(:each) do
    assign(:list, List.new(
      :name => "MyString",
      :idcard => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "input#list_idcard[name=?]", "list[idcard]"

      assert_select "input#list_phone[name=?]", "list[phone]"
    end
  end
end
