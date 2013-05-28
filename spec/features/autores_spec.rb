require 'spec_helper'
require 'capybara'

describe "Autores" do
  describe "go to livro page (root_path)" do
    it "sees the searchbox and no list below" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit livros_path
      page.should have_content("Procuro")
      page.should have_no_content("Disciplinas")
      #get autores_path
      #response.status.should be(302)
    end

    it "clicks on Icon and go to root_path" do
      visit livros_path
      click_link "Troca de Livros"
      current_path.should eq(root_path)
    end

  end
end
