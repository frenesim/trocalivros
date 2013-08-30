require 'spec_helper'

describe "apagas/edit" do
  before(:each) do
    @apaga = assign(:apaga, stub_model(Apaga,
      :name => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit apaga form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apaga_path(@apaga), "post" do
      assert_select "input#apaga_name[name=?]", "apaga[name]"
      assert_select "input#apaga_image[name=?]", "apaga[image]"
    end
  end
end
