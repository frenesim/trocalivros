require 'spec_helper'

describe "autores/new" do
  before(:each) do
    assign(:autore, stub_model(Autore,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new autore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", autores_path, "post" do
      assert_select "input#autore_nome[name=?]", "autore[nome]"
    end
  end
end
