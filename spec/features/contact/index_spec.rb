require 'rails_helper'

RSpec.describe 'Contact Page', type: :feature do
  xit 'has a link to email' do
    visit contact_path

    expect(page).to have_link('hello@mel-langhoff.com', href: 'mailto:hello@mel-langhoff.com')
  end
end