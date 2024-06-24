require "application_system_test_case"

class PostagensTest < ApplicationSystemTestCase
  setup do
    @postagem = postagens(:one)
  end

  test "visiting the index" do
    visit postagens_url
    assert_selector "h1", text: "Postagens"
  end

  test "should create postagem" do
    visit postagens_url
    click_on "New postagem"

    fill_in "Data", with: @postagem.data
    fill_in "Titulo", with: @postagem.titulo
    click_on "Create Postagem"

    assert_text "Postagem was successfully created"
    click_on "Back"
  end

  test "should update Postagem" do
    visit postagem_url(@postagem)
    click_on "Edit this postagem", match: :first

    fill_in "Data", with: @postagem.data
    fill_in "Titulo", with: @postagem.titulo
    click_on "Update Postagem"

    assert_text "Postagem was successfully updated"
    click_on "Back"
  end

  test "should destroy Postagem" do
    visit postagem_url(@postagem)
    click_on "Destroy this postagem", match: :first

    assert_text "Postagem was successfully destroyed"
  end
end
