class ContactMailer < ApplicationMailer
  default to: "mlanghoff@uwalumni.com"

  def contact_email(contact)
    @contact = contact

    mail(
  subject: "Website Form Contact",
  from: "mlanghoff@uwalumni.com",
  reply_to: @contact.email
)
  end
end