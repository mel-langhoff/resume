require "rails_helper"

RSpec.describe "Contacts", type: :request do
  describe "POST /contacts" do
    it "sends an email" do
      expect {
        post "/contacts", params: {
          contact: {
            name: "Mel",
            email: "test@example.com",
            message: "Hello!"
          }
        }
      }.to change { ActionMailer::Base.deliveries.count }.by(1)

      email = ActionMailer::Base.deliveries.last

      expect(email.to).to include("mlanghoff@uwalumni.com")
      expect(email.subject).to eq("Website Form Contact")
    end
  end
end