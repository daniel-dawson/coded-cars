require 'rails_helper'

RSpec.describe "ownership_histories/index", type: :view do
  before(:each) do
    assign(:ownership_histories, [
      OwnershipHistory.create!(
        :belongs_to => "",
        :belongs_to => ""
      ),
      OwnershipHistory.create!(
        :belongs_to => "",
        :belongs_to => ""
      )
    ])
  end

  it "renders a list of ownership_histories" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
