require 'rails_helper'

RSpec.describe Answer, type: :model do
  let (:question) { Question.create!(title: "New title", body: "New Body", resolved: true) }
  let (:answer) { Answer.create!(body: "New body", question: question) }
  
  describe "attributes" do
     it "has title, body and resolved attributes" do
       expect(question).to have_attributes(body: "New Body")
     end
   end
end
