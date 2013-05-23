require 'spec_helper'

describe "autores/show" do
  before(:each) do
    @autore = assign(:autore, stub_model(Autore,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
