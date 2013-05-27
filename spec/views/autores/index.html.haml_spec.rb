require 'spec_helper'

describe "autores/index" do

  before(:each) do
    assign(:autores, [
      stub_model(Autore,
        :nome => "manuel"
      ),
      stub_model(Autore,
        :nome => "john"
      )
    ])
  end

  it "renders a list of autores if signed in" do

    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => "Nome".to_s, :count => 2
    rendered.should contain("manuel")
    rendered.should contain("john")
  end
end
