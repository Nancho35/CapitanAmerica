require "application_system_test_case"

class MisionesTest < ApplicationSystemTestCase
  setup do
    @misione = misiones(:one)
  end

  test "visiting the index" do
    visit misiones_url
    assert_selector "h1", text: "Misiones"
  end

  test "creating a Misione" do
    visit misiones_url
    click_on "New Misione"

    fill_in "Fecha", with: @misione.fecha
    fill_in "Heroes Requeridos", with: @misione.heroes_requeridos
    fill_in "Integer", with: @misione.integer
    fill_in "Locacion", with: @misione.locacion
    fill_in "Nombre", with: @misione.nombre
    click_on "Create Misione"

    assert_text "Misione was successfully created"
    click_on "Back"
  end

  test "updating a Misione" do
    visit misiones_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @misione.fecha
    fill_in "Heroes Requeridos", with: @misione.heroes_requeridos
    fill_in "Integer", with: @misione.integer
    fill_in "Locacion", with: @misione.locacion
    fill_in "Nombre", with: @misione.nombre
    click_on "Update Misione"

    assert_text "Misione was successfully updated"
    click_on "Back"
  end

  test "destroying a Misione" do
    visit misiones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Misione was successfully destroyed"
  end
end
