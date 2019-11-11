require 'rails_helper'

RSpec.describe "owners/edit", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      :name => "MyString",
      :email => "MyString",
      :telephone => "MyString",
      :admin => nil
    ))
  end

  it "renders the edit owner form" do
    render

    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do

      assert_select "input[name=?]", "owner[name]"

      assert_select "input[name=?]", "owner[email]"

      assert_select "input[name=?]", "owner[telephone]"

      assert_select "input[name=?]", "owner[admin_id]"
    end
  end
end
