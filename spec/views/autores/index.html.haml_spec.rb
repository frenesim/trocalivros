require 'spec_helper'

describe "autores/index" do
  before(:each) do
    assign(:autores, [
      stub_model(Autore,
        :nome => "Nome"
      ),
      stub_model(Autore,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of autores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
