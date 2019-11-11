require 'rails_helper'

RSpec.describe "owners/new", type: :view do
  before(:each) do
    assign(:owner, Owner.new(
      :name => "MyString",
      :email => "MyString",
      :telephone => "MyString",
      :admin => nil
    ))
  end

  it "renders new owner form" do
    render

    assert_select "form[action=?][method=?]", owners_path, "post" do

      assert_select "input[name=?]", "owner[name]"

      assert_select "input[name=?]", "owner[email]"

      assert_select "input[name=?]", "owner[telephone]"

      assert_select "input[name=?]", "owner[admin_id]"
    end
  end
end
