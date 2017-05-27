require 'rails_helper'

RSpec.describe Question, type: :model do
  let (:question) { Question.create!(title: "New title", body: "New Body", resolved: true) }
  
  describe "attributes" do
     it "has title, body and resolved attributes" do
       expect(question).to have_attributes(title: "New title", body: "New Body", resolved: true)
     end
   end
end
