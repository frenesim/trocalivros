# encoding: UTF-8
require 'spec_helper'

describe Livro do

  it "has a valid factory" do
    FactoryGirl.create(:livro).should be_valid
  end

  it "returns a list of livros that match a search string" do
    l1 = FactoryGirl.create(:livro, nome: "a palavra que desce")
    l2 = FactoryGirl.create(:livro, nome: "a palavra que sobe")
    l3 = FactoryGirl.create(:livro, nome: "nem sobe nem desce")

    Livro.simple_search("pal").should == [l1,l2]
    Livro.simple_search("pal").should_not include l3
  end
end