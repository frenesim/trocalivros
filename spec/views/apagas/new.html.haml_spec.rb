require 'spec_helper'

describe "apagas/new" do
  before(:each) do
    assign(:apaga, stub_model(Apaga,
      :name => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new apaga form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apagas_path, "post" do
      assert_select "input#apaga_name[name=?]", "apaga[name]"
      assert_select "input#apaga_image[name=?]", "apaga[image]"
    end
  end
end
