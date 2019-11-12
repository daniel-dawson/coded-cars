require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :make => "MyString",
      :model => "MyString",
      :color => "MyString",
      :mileage => 1,
      :is_for_sale => false
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input[name=?]", "car[make]"

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[color]"

      assert_select "input[name=?]", "car[mileage]"

      assert_select "input[name=?]", "car[is_for_sale]"
    end
  end
end
