require "rails_helper"

RSpec.describe DidsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dids").to route_to("dids#index")
    end

    it "routes to #new" do
      expect(get: "/dids/new").to route_to("dids#new")
    end

    it "routes to #show" do
      expect(get: "/dids/1").to route_to("dids#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/dids/1/edit").to route_to("dids#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dids").to route_to("dids#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dids/1").to route_to("dids#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dids/1").to route_to("dids#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dids/1").to route_to("dids#destroy", id: "1")
    end
  end
end
