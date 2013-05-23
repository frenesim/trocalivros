# encoding: UTF-8
require 'spec_helper'

describe Autore do
  it "has a valid factory" do
    FactoryGirl.create(:autore).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:autore, nome: nil).should_not be_valid
  end

  it "returns a autore name as a string" do
    autore = FactoryGirl.create(:autore, nome: "barnabé")
    autore.nome.should == "barnabé"
  end

  it "don't accept duplicated names" do
    FactoryGirl.create(:autore, nome: "jaquim manel")
    FactoryGirl.build(:autore, nome: "jaquim manel").should_not be_valid
  end


end
