require 'rails_helper'

RSpec.describe "ownership_histories/index", type: :view do
  before(:each) do
    assign(:ownership_histories, [
      OwnershipHistory.create!(
        :owner => nil,
        :car => nil,
        :admin => nil
      ),
      OwnershipHistory.create!(
        :owner => nil,
        :car => nil,
        :admin => nil
      )
    ])
  end

  it "renders a list of ownership_histories" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
