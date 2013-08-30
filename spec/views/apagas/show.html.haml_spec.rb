require 'spec_helper'

describe "apagas/show" do
  before(:each) do
    @apaga = assign(:apaga, stub_model(Apaga,
      :name => "Name",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Image/)
  end
end
