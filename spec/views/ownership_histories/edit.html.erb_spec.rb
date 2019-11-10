require 'rails_helper'

RSpec.describe "ownership_histories/edit", type: :view do
  before(:each) do
    @ownership_history = assign(:ownership_history, OwnershipHistory.create!(
      :belongs_to => "",
      :belongs_to => ""
    ))
  end

  it "renders the edit ownership_history form" do
    render

    assert_select "form[action=?][method=?]", ownership_history_path(@ownership_history), "post" do

      assert_select "input[name=?]", "ownership_history[belongs_to]"

      assert_select "input[name=?]", "ownership_history[belongs_to]"
    end
  end
end
