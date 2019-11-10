require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      :make => "MyString",
      :model => "MyString",
      :color => "MyString",
      :mileage => 1,
      :is_for_sale => false
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input[name=?]", "car[make]"

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[color]"

      assert_select "input[name=?]", "car[mileage]"

      assert_select "input[name=?]", "car[is_for_sale]"
    end
  end
end
