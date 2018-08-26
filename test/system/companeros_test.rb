require "application_system_test_case"

class CompanerosTest < ApplicationSystemTestCase
  setup do
    @companero = companeros(:one)
  end

  test "visiting the index" do
    visit companeros_url
    assert_selector "h1", text: "Companeros"
  end

  test "creating a Companero" do
    visit companeros_url
    click_on "New Companero"

    fill_in "Descripcion", with: @companero.descripcion
    fill_in "Especialidad", with: @companero.especialidad
    fill_in "Nombre", with: @companero.nombre
    click_on "Create Companero"

    assert_text "Companero was successfully created"
    click_on "Back"
  end

  test "updating a Companero" do
    visit companeros_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @companero.descripcion
    fill_in "Especialidad", with: @companero.especialidad
    fill_in "Nombre", with: @companero.nombre
    click_on "Update Companero"

    assert_text "Companero was successfully updated"
    click_on "Back"
  end

  test "destroying a Companero" do
    visit companeros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Companero was successfully destroyed"
  end
end
