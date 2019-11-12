require 'rails_helper'

RSpec.describe "ownership_histories/show", type: :view do
  before(:each) do
    @ownership_history = assign(:ownership_history, OwnershipHistory.create!(
      :owner => nil,
      :car => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
