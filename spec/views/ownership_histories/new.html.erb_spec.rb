require 'rails_helper'

RSpec.describe "ownership_histories/new", type: :view do
  before(:each) do
    assign(:ownership_history, OwnershipHistory.new(
      :belongs_to => "",
      :belongs_to => ""
    ))
  end

  it "renders new ownership_history form" do
    render

    assert_select "form[action=?][method=?]", ownership_histories_path, "post" do

      assert_select "input[name=?]", "ownership_history[belongs_to]"

      assert_select "input[name=?]", "ownership_history[belongs_to]"
    end
  end
end
