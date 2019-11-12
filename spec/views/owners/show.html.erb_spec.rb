require 'rails_helper'

RSpec.describe "owners/show", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      :name => "Name",
      :email => "Email",
      :telephone => "Telephone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Telephone/)
  end
end
