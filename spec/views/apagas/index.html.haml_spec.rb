require 'spec_helper'

describe "apagas/index" do
  before(:each) do
    assign(:apagas, [
      stub_model(Apaga,
        :name => "Name",
        :image => "Image"
      ),
      stub_model(Apaga,
        :name => "Name",
        :image => "Image"
      )
    ])
  end

  it "renders a list of apagas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
