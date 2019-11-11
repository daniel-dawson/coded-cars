require 'rails_helper'

RSpec.describe "ownership_histories/new", type: :view do
  before(:each) do
    assign(:ownership_history, OwnershipHistory.new(
      :owner => nil,
      :car => nil,
      :admin => nil
    ))
  end

  it "renders new ownership_history form" do
    render

    assert_select "form[action=?][method=?]", ownership_histories_path, "post" do

      assert_select "input[name=?]", "ownership_history[owner_id]"

      assert_select "input[name=?]", "ownership_history[car_id]"

      assert_select "input[name=?]", "ownership_history[admin_id]"
    end
  end
end
