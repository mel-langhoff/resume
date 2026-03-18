require 'mailgun-ruby'

class ContactMailer
  def self.send_contact(contact)
    domain = "sandbox159f1254315e4ac2bc2ba35e097a7666.mailgun.org"

    mg_client = Mailgun::Client.new(
      ENV["MAILGUN_API_KEY"],
      "api.eu.mailgun.net"
    )

    message_params = {
      from: "Portfolio <mailgun@#{domain}>",
      to: "mlanghoff@uwalumni.com",
      subject: "New message from #{contact.name}",
      text: <<~TEXT
        Name: #{contact.name}
        Email: #{contact.email}

        Message:
        #{contact.message}
      TEXT
    }

    mg_client.send_message(domain, message_params)
  end
end