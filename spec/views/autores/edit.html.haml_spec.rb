require 'spec_helper'

describe "autores/edit" do
  before(:each) do
    @autore = assign(:autores,[
        FactoryGirl.create(:autore)
    ])
  end

  it "renders the edit autore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", autore_path(@autore), "post" do
      assert_select "input#autore_nome[name=?]", "autore[nome]"
    end
  end
end
