require "application_system_test_case"

class EnemigosTest < ApplicationSystemTestCase
  setup do
    @enemigo = enemigos(:one)
  end

  test "visiting the index" do
    visit enemigos_url
    assert_selector "h1", text: "Enemigos"
  end

  test "creating a Enemigo" do
    visit enemigos_url
    click_on "New Enemigo"

    fill_in "Edad", with: @enemigo.edad
    fill_in "Nombre", with: @enemigo.nombre
    fill_in "Poderes", with: @enemigo.poderes
    click_on "Create Enemigo"

    assert_text "Enemigo was successfully created"
    click_on "Back"
  end

  test "updating a Enemigo" do
    visit enemigos_url
    click_on "Edit", match: :first

    fill_in "Edad", with: @enemigo.edad
    fill_in "Nombre", with: @enemigo.nombre
    fill_in "Poderes", with: @enemigo.poderes
    click_on "Update Enemigo"

    assert_text "Enemigo was successfully updated"
    click_on "Back"
  end

  test "destroying a Enemigo" do
    visit enemigos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enemigo was successfully destroyed"
  end
end
