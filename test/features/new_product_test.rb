require "test_helper"

feature "create a product" do
  scenario "use create product button" do
    visit root_path
    click_on "New Product"
    page.text.must_include "New product"
  end

  scenario "fill in product name and price, send form"
    visit new_product_path
    fill_in "Name", with: "item3"
    fill_in "Price", with: "200"
    click_on "Create Product"
    page.text.must_include "Product was successfully created."
  end
end
