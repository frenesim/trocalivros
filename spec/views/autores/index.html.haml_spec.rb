require 'spec_helper'

describe "autores/index" do

  before(:each) do
    assign(:autores,[
      FactoryGirl.create(:autore, :nome=>"Nome123"),
      FactoryGirl.create(:autore, :nome=>"Nome456")
    ])
  end

  it "renders a list of autores if signed in" do

    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome123".to_s, :count => 1

  end
end
