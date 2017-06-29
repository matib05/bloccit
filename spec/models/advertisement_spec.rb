require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New Advertisement", body: "Check this out", price: 35)}
  
  describe "attributes" do
    it "has title, body, and price advertisements" do
        expect(advertisement).to have_attributes(title: "New Advertisement", body: "Check this out", price: 35)
    end
  end
end
