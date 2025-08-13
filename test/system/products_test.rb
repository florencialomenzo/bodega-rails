require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Lista de productos"
  end

  test "should create product" do
    visit products_url
    click_on "Crear Producto"

    fill_in "Description", with: @product.description
    fill_in "Name", with: @product.name
    fill_in "Reference", with: @product.reference
    click_on "Crear"

    assert_text "Product was successfully created"
    click_on "Back to products"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Description", with: @product.description
    fill_in "Name", with: @product.name
    fill_in "Reference", with: @product.reference
    click_on "Crear"

    assert_text "Product was successfully updated"
    click_on "Back to products"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
