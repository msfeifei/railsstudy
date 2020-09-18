require 'rails_helper'

RSpec.describe "lists/edit", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :name => "MyString",
      :idcard => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "input#list_idcard[name=?]", "list[idcard]"

      assert_select "input#list_phone[name=?]", "list[phone]"
    end
  end
end
