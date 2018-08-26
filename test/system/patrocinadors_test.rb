require "application_system_test_case"

class PatrocinadorsTest < ApplicationSystemTestCase
  setup do
    @patrocinador = patrocinadors(:one)
  end

  test "visiting the index" do
    visit patrocinadors_url
    assert_selector "h1", text: "Patrocinadors"
  end

  test "creating a Patrocinador" do
    visit patrocinadors_url
    click_on "New Patrocinador"

    fill_in "Descripcion", with: @patrocinador.descripcion
    fill_in "Dinero", with: @patrocinador.dinero
    fill_in "Nit", with: @patrocinador.nit
    fill_in "Nombre", with: @patrocinador.nombre
    click_on "Create Patrocinador"

    assert_text "Patrocinador was successfully created"
    click_on "Back"
  end

  test "updating a Patrocinador" do
    visit patrocinadors_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @patrocinador.descripcion
    fill_in "Dinero", with: @patrocinador.dinero
    fill_in "Nit", with: @patrocinador.nit
    fill_in "Nombre", with: @patrocinador.nombre
    click_on "Update Patrocinador"

    assert_text "Patrocinador was successfully updated"
    click_on "Back"
  end

  test "destroying a Patrocinador" do
    visit patrocinadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patrocinador was successfully destroyed"
  end
end
