require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :user => nil,
      :quantity => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_user_id[name=?]", "product[user_id]"

      assert_select "input#product_quantity[name=?]", "product[quantity]"
    end
  end
end
