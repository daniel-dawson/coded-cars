require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :make => "Make",
        :model => "Model",
        :color => "Color",
        :mileage => 2,
        :is_for_sale => false
      ),
      Car.create!(
        :make => "Make",
        :model => "Model",
        :color => "Color",
        :mileage => 2,
        :is_for_sale => false
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
