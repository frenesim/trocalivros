require 'spec_helper'

describe "livro/index" do

  it "renders a list of livros" do

    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => "Nome123".to_s, :count => 1

  end
end
