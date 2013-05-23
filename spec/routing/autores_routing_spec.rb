require "spec_helper"

describe AutoresController do
  describe "routing" do

    it "routes to #index" do
      get("/autores").should route_to("autores#index")
    end

    it "routes to #new" do
      get("/autores/new").should route_to("autores#new")
    end

    it "routes to #show" do
      get("/autores/1").should route_to("autores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/autores/1/edit").should route_to("autores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/autores").should route_to("autores#create")
    end

    it "routes to #update" do
      put("/autores/1").should route_to("autores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/autores/1").should route_to("autores#destroy", :id => "1")
    end

  end
end
