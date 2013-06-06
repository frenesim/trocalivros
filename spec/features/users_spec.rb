require 'spec_helper'

feature "go to livro page (root_path)" do

  scenario "sees the searchbox and no list below" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit livros_path
    page.should have_content("Procuro")
    page.should have_no_content("Disciplinas")
    #get autores_path
    #response.status.should be(302)
  end

  scenario "clicks on Icon and go to root_path" do
    visit livros_path
    click_link "Troca de Livros"
    current_path.should eq(root_path)
  end

  scenario "unauthenticated user can see list of books" do
    visit livros_path
    click_button "Ir"
    page.should_not have_link("Editar")
  end

end
