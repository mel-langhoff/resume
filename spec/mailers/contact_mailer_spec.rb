require "rails_helper"

RSpec.describe ContactMailer, type: :mailer do
  describe "contact_email" do
    let(:contact) do
      Contact.new(
        name: "Mel",
        email: "test@example.com",
        message: "Hello from test"
      )
    end

    let(:mail) { ContactMailer.contact_email(contact) }

    it "renders the headers" do
      expect(mail.subject).to eq("Website Form Contact")
      expect(mail.to).to eq(["mlanghoff@uwalumni.com"])
      expect(mail.from).to eq(["mlanghoff@uwalumni.com"]) # change if needed
    end

    it "includes the contact info in the body" do
      expect(mail.body.encoded).to include("Mel")
      expect(mail.body.encoded).to include("test@example.com")
      expect(mail.body.encoded).to include("Hello from test")
    end
  end
end